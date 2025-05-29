import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

import '../../Controllers/visit_controller.dart';
import '../../Models/activities/activity_model.dart';
import '../../Models/customers/customer_model.dart';
import '../../Models/util_models.dart';
import '../../Models/visits/visit_model.dart';
import '../../Utils/constants.dart';

class AddVisitScreen extends StatefulWidget {
  static String routeName = '/add_visit';

  const AddVisitScreen({super.key});

  @override
  State<AddVisitScreen> createState() => _AddVisitScreenState();
}

class _AddVisitScreenState extends State<AddVisitScreen> {
  var visitController = Get.put(VisitController());

  TextEditingController locationController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  final controller = MultiSelectController<ActivityModel>();
  List<String> selectedActivities = [];
  String? customerErr, locationErr, dateErr, activityErr;
  String customerId = '', visitingDate = '';

  loadingBuilder() => Container(
    height: 50,
    padding: EdgeInsets.symmetric(vertical: 10),
    child: defaultLoader(context),
  );
  errorBuilder(String item) => Text('Failed to fetch $item');
  emptyBuilder(String item) => Text('No $item found');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBarText('Add a visit'),
        leading: defaultBackIcon(context),
        backgroundColor: kWhiteColor,
      ),
      body: Container(
        color: kWhiteColor,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: locationTextInput(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextFormField(
                  readOnly: true,
                  controller: dateController,
                  style: const TextStyle(fontSize: 13),
                  onTap: () => pickDate(),
                  decoration: defaultInputDecoration(
                    Icons.calendar_month_outlined,
                    dateErr,
                  ).copyWith(labelText: 'Visiting date *'),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: customersDrop(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: activitiesDrop(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: notesTextInput(),
              ),
              Obx(() {
                return Container(
                  width: fullWidth(context),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Visibility(
                    visible: visitController.postIsLoading.value,
                    replacement: defaultElevatedButton(
                      () => customValidate(),
                      'Add Visit',
                    ),
                    child: defaultLoader(context),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  pickDate() async {
    await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 100, 12, 31),
      helpText: 'Select visiting date',
      confirmText: 'Select date',
    ).then((dob) {
      if (dob != null) {
        if (dateErr != null) setState(() => dateErr = null);
        visitingDate = dob.toUtc().toIso8601String();
        dateController.text = getDateFormat(visitingDate.toString());
      }
    });
  }

  TextFormField locationTextInput() {
    return TextFormField(
      autofocus: false,
      controller: locationController,
      keyboardType: TextInputType.text,
      onChanged: (query) {
        if (locationErr != null) setState(() => locationErr = null);
      },
      decoration: defaultInputDecoration(
        Icons.location_pin,
        locationErr,
      ).copyWith(labelText: 'Location *'),
    );
  }

  TextFormField notesTextInput() {
    return TextFormField(
      autofocus: false,
      controller: noteController,
      keyboardType: TextInputType.text,
      onChanged: (query) {},
      decoration: defaultInputDecoration(
        Icons.note_add,
        null,
      ).copyWith(labelText: 'Note'),
    );
  }

  DropdownSearch customersDrop() {
    return DropdownSearch<CustomerModel>(
      decoratorProps: DropDownDecoratorProps(
        decoration: defaultInputDecoration(
          Icons.person,
          customerErr,
        ).copyWith(labelText: 'Customer *\n'),
      ),
      popupProps: PopupProps.menu(
        showSearchBox: true,
        fit: FlexFit.loose,
        searchFieldProps: searchFieldProps(),
        itemBuilder: (context, item, isDisabled, isSelected) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.name ?? ''),
            ),
          );
        },
        loadingBuilder: (context, entry) => loadingBuilder(),
        errorBuilder: (context, string, ex) => errorBuilder('customers'),
        emptyBuilder: (context, string) => emptyBuilder('customers'),
      ),
      onChanged: (value) {
        if (customerErr != null) setState(() => customerErr = null);
        customerId = value!.id.toString();
      },
      items: (filter, loadProps) => getCustomers().customers?.toList() ?? [],
      itemAsString: (item) => item.name ?? '',
      compareFn: (a, b) => a.id == b.id,
    );
  }

  MultiDropdown activitiesDrop() {
    var activities = getActivities().activities?.toList() ?? [];
    var items = activities.map((a) {
      return DropdownItem(label: a.description ?? '', value: a);
    }).toList();

    return MultiDropdown<ActivityModel>(
      items: items,
      controller: controller,
      searchEnabled: true,
      searchDecoration: SearchFieldDecoration(
        border: null,
        focusedBorder: null,
      ),
      chipDecoration: ChipDecoration(
        backgroundColor: kSecondaryColor,
        wrap: true,
        runSpacing: 2,
        spacing: 10,
      ),
      fieldDecoration: defaultFieldDecoration(
        'Pick activities',
        Icons.task,
        activityErr,
      ),
      dropdownDecoration: DropdownDecoration(
        marginTop: 2,
        maxHeight: fullHeight(context) * 0.3,
      ),
      dropdownItemDecoration: DropdownItemDecoration(
        selectedIcon: Icon(Icons.check_box, color: kPrimaryColor),
        disabledIcon: Icon(Icons.lock, color: Colors.grey.shade300),
      ),
      onSelectionChange: (selectedItems) {
        selectedActivities = selectedItems.map((a) => a.id.toString()).toList();
      },
    );
  }

  void setError(String input) {
    switch (input) {
      case 'customer':
        customerErr = 'Select a customer';
        break;
      case 'location':
        locationErr = 'Enter a visit location';
        break;
      case 'date':
        dateErr = 'Select a visiting date';
        break;
      case 'activities':
        activityErr = 'Pick at least one activity';
        break;
      default:
    }
    setState(() {});
  }

  customValidate() async {
    String loc = locationController.text.trim();

    if (customerId.isEmpty ||
        visitingDate.isEmpty ||
        loc.isEmpty ||
        selectedActivities.isEmpty) {
      if (loc.isEmpty) {
        setError('location');
      }
      if (visitingDate.isEmpty) {
        setError('date');
      }
      if (customerId.isEmpty) {
        setError('customer');
      }
      if (selectedActivities.isEmpty) {
        setError('activities');
      }
    } else {
      await createVisit();
    }
  }

  Future<void> createVisit() async {
    final request = VisitRequest(
      (b) => b
        ..customerId = int.parse(customerId)
        ..visitDate = visitingDate
        //Assuming all added visits are PENDING by default then we can change status later on after a visit or if cancelled
        ..status = 'Pending'
        ..location = locationController.text
        ..notes = noteController.text
        ..activitiesDone = selectedActivities,
    ).toJson();

    visitController.addVisit(request);
  }
}

TextFieldProps searchFieldProps() {
  return TextFieldProps(
    decoration: InputDecoration(
      border: null,
      hint: Text('Search'),
      suffixIcon: Icon(Icons.search),
    ),
  );
}
