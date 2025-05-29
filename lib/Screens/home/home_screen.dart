import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/activity_controller copy.dart';
import '../../Controllers/customer_controller.dart';
import '../../Controllers/visit_controller.dart';
import '../../Utils/constants.dart';
import '../../Utils/custom_action_button.dart';
import '../visits/add_visit_screen.dart';
import '../visits/visits_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var visitController = Get.put(VisitController());
  var activityController = Get.put(ActivityController());
  var customerController = Get.put(CustomerController());

  @override
  void initState() {
    super.initState();

    visitController.getAllVisits();
    activityController.getAllActivities();
    customerController.getAllCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBarText('Route-to-Market'),
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomActionButton(
                icon: CupertinoIcons.add_circled,
                title: 'New visit',
                doThis: () => Get.toNamed(AddVisitScreen.routeName),
              ),
              CustomActionButton(
                icon: CupertinoIcons.doc_on_doc,
                title: 'My visits',
                doThis: () => Get.toNamed(VisitsScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
