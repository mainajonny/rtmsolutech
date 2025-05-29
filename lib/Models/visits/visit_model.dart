// ignore_for_file: depend_on_referenced_packages

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'visit_model.g.dart';

abstract class VisitsModel implements Built<VisitsModel, VisitsModelBuilder> {
  BuiltList<VisitModel>? get visits;

  VisitsModel._();

  factory VisitsModel([Function(VisitsModelBuilder b) updates]) = _$VisitsModel;

  static Serializer<VisitsModel> get serializer => _$visitsModelSerializer;
}

abstract class VisitModel implements Built<VisitModel, VisitModelBuilder> {
  int? get id;
  @BuiltValueField(wireName: 'customer_id')
  int? get customerId;
  @BuiltValueField(wireName: 'visit_date')
  String? get visitDate;
  String? get status;
  String? get location;
  String? get notes;
  @BuiltValueField(wireName: 'activities_done')
  BuiltList<String>? get activitiesDone;
  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;

  VisitModel._();

  factory VisitModel([Function(VisitModelBuilder b) updates]) = _$VisitModel;

  static Serializer<VisitModel> get serializer => _$visitModelSerializer;
}

abstract class VisitRequest
    implements Built<VisitRequest, VisitRequestBuilder> {
  @BuiltValueField(wireName: 'customer_id')
  int? get customerId;
  @BuiltValueField(wireName: 'visit_date')
  String? get visitDate;
  String? get status;
  String? get location;
  String? get notes;
  @BuiltValueField(wireName: 'activities_done')
  List<String>? get activitiesDone;

  VisitRequest._();

  Map<String, dynamic> toJson() => {
    'customer_id': customerId,
    'visit_date': visitDate,
    'status': status,
    'location': location,
    'notes': notes,
    'activities_done': activitiesDone,
  };

  factory VisitRequest([Function(VisitRequestBuilder b) updates]) =
      _$VisitRequest;

  static Serializer<VisitRequest> get serializer => _$visitRequestSerializer;
}
