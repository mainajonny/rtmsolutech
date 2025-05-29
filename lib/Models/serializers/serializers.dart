// ignore_for_file: depend_on_referenced_packages

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../activities/activity_model.dart';
import '../customers/customer_model.dart';
import '../visits/visit_model.dart';

part 'serializers.g.dart';

@SerializersFor([VisitsModel, ActivitiesModel, CustomersModel])
final Serializers serializers =
    (_$serializers.toBuilder()
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(VisitModel)]),
            () => ListBuilder<VisitModel>(),
          )
          ..addBuilderFactory(
            const FullType(BuiltList, [FullType(String)]),
            () => ListBuilder<String>(),
          )
          ..addPlugin(StandardJsonPlugin()))
        .build();
