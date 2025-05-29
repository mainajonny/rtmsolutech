// ignore_for_file: depend_on_referenced_packages

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_model.g.dart';

abstract class CustomersModel
    implements Built<CustomersModel, CustomersModelBuilder> {
  BuiltList<CustomerModel>? get customers;

  CustomersModel._();

  factory CustomersModel([Function(CustomersModelBuilder b) updates]) =
      _$CustomersModel;

  static Serializer<CustomersModel> get serializer =>
      _$customersModelSerializer;
}

abstract class CustomerModel
    implements Built<CustomerModel, CustomerModelBuilder> {
  int? get id;
  String? get name;
  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;

  CustomerModel._();

  factory CustomerModel([Function(CustomerModelBuilder b) updates]) =
      _$CustomerModel;

  static Serializer<CustomerModel> get serializer => _$customerModelSerializer;
}
