// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers =
    (Serializers().toBuilder()
          ..add(ActivitiesModel.serializer)
          ..add(ActivityModel.serializer)
          ..add(CustomerModel.serializer)
          ..add(CustomersModel.serializer)
          ..add(VisitModel.serializer)
          ..add(VisitsModel.serializer)
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(ActivityModel)]),
            () => ListBuilder<ActivityModel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(CustomerModel)]),
            () => ListBuilder<CustomerModel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, const [const FullType(VisitModel)]),
            () => ListBuilder<VisitModel>(),
          ))
        .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
