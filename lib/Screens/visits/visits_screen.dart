import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/visit_controller.dart';
import '../../Models/util_models.dart';
import '../../Models/visits/visit_model.dart';
import '../../Utils/constants.dart';
import 'visit_details.dart';

class VisitsScreen extends StatefulWidget {
  static String routeName = '/visits';

  const VisitsScreen({super.key});

  @override
  State<VisitsScreen> createState() => _VisitsScreenState();
}

class _VisitsScreenState extends State<VisitsScreen> {
  var visitController = Get.put(VisitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: defaultAppBarText('My Visits'),
        leading: defaultBackIcon(context),
        actions: [
          IconButton(
            onPressed: () => visitController.getAllVisits(),
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(maintainBottomViewPadding: true, child: VisitsBody()),
    );
  }
}

class VisitsBody extends StatefulWidget {
  const VisitsBody({super.key});

  @override
  State<VisitsBody> createState() => _VisitsBodyState();
}

class _VisitsBodyState extends State<VisitsBody>
    with SingleTickerProviderStateMixin {
  var visitController = Get.put(VisitController());
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Color statusColor(int index) {
    switch (index) {
      case 0:
        return Colors.orange;
      case 1:
        return Colors.green;
      case 2:
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      List<VisitModel> visits = getVisits().visits?.toList() ?? [];
      List<String?> statuses = visits.map((t) => t.status).toSet().toList();

      return Visibility(
        visible: visitController.isLoading.value,
        replacement: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                tabs: statuses
                    .map((status) => Tab(height: 40, text: status))
                    .toList(),
                controller: controller,
                enableFeedback: true,
                indicatorWeight: 3.0,
                indicatorColor: statusColor(controller.index),
                tabAlignment: TabAlignment.fill,
                unselectedLabelColor: kGreyColor,
                labelColor: statusColor(controller.index),
                labelStyle: const TextStyle(
                  overflow: TextOverflow.visible,
                  fontWeight: FontWeight.bold,
                ),
                onTap: (index) => setState(() {}),
              ),
              Container(
                height: fullHeight(context) * 0.8,
                padding: EdgeInsets.only(bottom: 20),
                child: TabBarView(
                  controller: controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: statuses.map((status) {
                    List<VisitModel> filteredVisits = visits
                        .where((t) => t.status == status)
                        .toList();

                    return ListView.builder(
                      itemCount: filteredVisits.length,
                      itemBuilder: (context, index) {
                        final visit = filteredVisits[index];
                        return Card(
                          margin: const EdgeInsets.all(8.0),
                          color: kWhiteColor,
                          child: ListTile(
                            isThreeLine: true,
                            enableFeedback: false,
                            horizontalTitleGap: 0.0,
                            splashColor: Colors.transparent,
                            visualDensity: VisualDensity.comfortable,
                            contentPadding: const EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              side: BorderSide(color: kGreyColor),
                            ),
                            onTap: () {
                              visitController.selectedVisit(visit);
                              Get.toNamed(VisitDetails.routeName);
                            },
                            title: Text("${visit.location}"),
                            subtitle: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                subTitleRow(
                                  'Activities:',
                                  '${visit.activitiesDone?.length}',
                                ),
                                subTitleRow(
                                  'Visit date:',
                                  getDateFormat(visit.visitDate),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        child: defaultLoader(context),
      );
    });
  }

  Row subTitleRow(String title, subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Text(subtitle, style: TextStyle(color: kPrimaryColor)),
      ],
    );
  }
}
