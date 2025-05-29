// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomersModel> _$customersModelSerializer =
    _$CustomersModelSerializer();
Serializer<CustomerModel> _$customerModelSerializer =
    _$CustomerModelSerializer();

class _$CustomersModelSerializer
    implements StructuredSerializer<CustomersModel> {
  @override
  final Iterable<Type> types = const [CustomersModel, _$CustomersModel];
  @override
  final String wireName = 'CustomersModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CustomersModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.customers;
    if (value != null) {
      result
        ..add('customers')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(CustomerModel),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  CustomersModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomersModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customers':
          result.customers.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(CustomerModel),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerModelSerializer implements StructuredSerializer<CustomerModel> {
  @override
  final Iterable<Type> types = const [CustomerModel, _$CustomerModel];
  @override
  final String wireName = 'CustomerModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CustomerModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  CustomerModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'name':
          result.name =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'created_at':
          result.createdAt =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomersModel extends CustomersModel {
  @override
  final BuiltList<CustomerModel>? customers;

  factory _$CustomersModel([void Function(CustomersModelBuilder)? updates]) =>
      (CustomersModelBuilder()..update(updates))._build();

  _$CustomersModel._({this.customers}) : super._();
  @override
  CustomersModel rebuild(void Function(CustomersModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomersModelBuilder toBuilder() => CustomersModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomersModel && customers == other.customers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CustomersModel',
    )..add('customers', customers)).toString();
  }
}

class CustomersModelBuilder
    implements Builder<CustomersModel, CustomersModelBuilder> {
  _$CustomersModel? _$v;

  ListBuilder<CustomerModel>? _customers;
  ListBuilder<CustomerModel> get customers =>
      _$this._customers ??= ListBuilder<CustomerModel>();
  set customers(ListBuilder<CustomerModel>? customers) =>
      _$this._customers = customers;

  CustomersModelBuilder();

  CustomersModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customers = $v.customers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomersModel other) {
    _$v = other as _$CustomersModel;
  }

  @override
  void update(void Function(CustomersModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomersModel build() => _build();

  _$CustomersModel _build() {
    _$CustomersModel _$result;
    try {
      _$result = _$v ?? _$CustomersModel._(customers: _customers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customers';
        _customers?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomersModel',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CustomerModel extends CustomerModel {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? createdAt;

  factory _$CustomerModel([void Function(CustomerModelBuilder)? updates]) =>
      (CustomerModelBuilder()..update(updates))._build();

  _$CustomerModel._({this.id, this.name, this.createdAt}) : super._();
  @override
  CustomerModel rebuild(void Function(CustomerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerModelBuilder toBuilder() => CustomerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerModel &&
        id == other.id &&
        name == other.name &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerModel')
          ..add('id', id)
          ..add('name', name)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CustomerModelBuilder
    implements Builder<CustomerModel, CustomerModelBuilder> {
  _$CustomerModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  CustomerModelBuilder();

  CustomerModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerModel other) {
    _$v = other as _$CustomerModel;
  }

  @override
  void update(void Function(CustomerModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerModel build() => _build();

  _$CustomerModel _build() {
    final _$result =
        _$v ?? _$CustomerModel._(id: id, name: name, createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
