import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/visit_controller.dart';
import '../../Models/util_models.dart';
import '../../Models/visits/visit_model.dart';
import '../../Utils/constants.dart';

class VisitDetails extends StatefulWidget {
  static String routeName = '/visit_details';

  const VisitDetails({super.key});

  @override
  State<VisitDetails> createState() => _VisitDetailsState();
}

class _VisitDetailsState extends State<VisitDetails> {
  var visitController = Get.put(VisitController());
  bool isVisible = false;

  Color statusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
        return Colors.orange;
      case 'completed':
        return Colors.green;
      case 'cancelled':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBarText('My Visits'),
        leading: defaultBackIcon(context),
        backgroundColor: kWhiteColor,
      ),
      body: Obx(() {
        VisitModel visit = visitController.selectedVisit.value;
        String? customer = getCustomers().customers
            ?.where((c) => c.id == visit.customerId)
            .first
            .name;

        return SafeArea(
          maintainBottomViewPadding: true,
          child: Container(
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                    title: Text(visit.location ?? 'N/A', style: kStyle),
                    subtitle: Text(
                      customer ?? '',
                      style: const TextStyle(fontSize: 13.0),
                    ),
                  ),
                  SizedBox(height: fullHeight(context) * 0.01),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Created on', style: kStyle),
                        Text('Visit date', style: kStyle),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${getDateFormat(visit.createdAt)}\n${getTimings(visit.createdAt ?? '')}',
                          style: const TextStyle(fontSize: 13.0),
                        ),
                        Text(
                          '${getDateFormat(visit.visitDate)}\n${getTimings(visit.visitDate ?? '')}',
                          textAlign: TextAlign.end,
                          style: const TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: fullHeight(context) * 0.01),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                    title: Text('Visit notes', style: kStyle),
                    subtitle: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${visit.notes ?? 'N/A'}\n'),
                        Text(
                          visit.status ?? '',
                          style: TextStyle(
                            fontSize: 18,
                            color: statusColor(visit.status ?? ''),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: fullHeight(context) * 0.01),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            style: kStyle,
                            children: [
                              TextSpan(text: 'Activities: '),
                              TextSpan(
                                text: '${visit.activitiesDone?.length ?? 0}',
                                style: TextStyle(color: kSecondaryColor),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.zero),
                          ),
                          onPressed: () =>
                              setState(() => isVisible = !isVisible),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                '${isVisible ? 'Hide' : 'Show'} activities',
                                style: TextStyle(color: kPrimaryColor),
                              ),
                              Icon(
                                isVisible
                                    ? Icons.arrow_drop_up_rounded
                                    : Icons.arrow_drop_down,
                                color: kPrimaryColor,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: ActivitiesList(visit: visit),
                  ),
                  SizedBox(height: fullHeight(context) * 0.01),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class ActivitiesList extends StatelessWidget {
  const ActivitiesList({super.key, this.visit});

  final VisitModel? visit;

  @override
  Widget build(BuildContext context) {
    List<String> doneActivities = visit?.activitiesDone?.toList() ?? [];

    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: doneActivities.length,
      itemBuilder: (context, index) {
        var active = getActivities().activities
            ?.where((a) => a.id == int.parse(doneActivities[index]))
            .toList();

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: active!.map((a) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              title: Text(a.description ?? '', style: kStyle),
              subtitle: Text(
                '${getTimings(a.createdAt ?? '')},  ${getDateFormat(a.createdAt)}',
                style: const TextStyle(fontSize: 13.0),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
