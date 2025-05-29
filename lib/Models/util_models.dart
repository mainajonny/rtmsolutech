import 'activities/activity_model.dart';
import 'customers/customer_model.dart';
import 'serializers/serializers.dart';
import 'visits/visit_model.dart';

Map<String, dynamic> visitsInfo = <String, dynamic>{};
VisitsModel getVisits() =>
    serializers.deserializeWith(VisitsModel.serializer, visitsInfo)!;

Map<String, dynamic> activitiesInfo = <String, dynamic>{};
ActivitiesModel getActivities() =>
    serializers.deserializeWith(ActivitiesModel.serializer, activitiesInfo)!;

Map<String, dynamic> customersInfo = <String, dynamic>{};
CustomersModel getCustomers() =>
    serializers.deserializeWith(CustomersModel.serializer, customersInfo)!;
