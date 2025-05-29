// ignore_for_file: depend_on_referenced_packages

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_model.g.dart';

abstract class ActivitiesModel
    implements Built<ActivitiesModel, ActivitiesModelBuilder> {
  BuiltList<ActivityModel>? get activities;

  ActivitiesModel._();

  factory ActivitiesModel([Function(ActivitiesModelBuilder b) updates]) =
      _$ActivitiesModel;

  static Serializer<ActivitiesModel> get serializer =>
      _$activitiesModelSerializer;
}

abstract class ActivityModel
    implements Built<ActivityModel, ActivityModelBuilder> {
  int? get id;
  String? get description;
  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;

  ActivityModel._();

  factory ActivityModel([Function(ActivityModelBuilder b) updates]) =
      _$ActivityModel;

  static Serializer<ActivityModel> get serializer => _$activityModelSerializer;
}
