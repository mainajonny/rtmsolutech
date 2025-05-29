// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VisitsModel> _$visitsModelSerializer = _$VisitsModelSerializer();
Serializer<VisitModel> _$visitModelSerializer = _$VisitModelSerializer();
Serializer<VisitRequest> _$visitRequestSerializer = _$VisitRequestSerializer();

class _$VisitsModelSerializer implements StructuredSerializer<VisitsModel> {
  @override
  final Iterable<Type> types = const [VisitsModel, _$VisitsModel];
  @override
  final String wireName = 'VisitsModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VisitsModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.visits;
    if (value != null) {
      result
        ..add('visits')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(VisitModel),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  VisitsModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VisitsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'visits':
          result.visits.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(VisitModel),
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

class _$VisitModelSerializer implements StructuredSerializer<VisitModel> {
  @override
  final Iterable<Type> types = const [VisitModel, _$VisitModel];
  @override
  final String wireName = 'VisitModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VisitModel object, {
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
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visitDate;
    if (value != null) {
      result
        ..add('visit_date')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.activitiesDone;
    if (value != null) {
      result
        ..add('activities_done')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(String),
            ]),
          ),
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
  VisitModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VisitModelBuilder();

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
        case 'customer_id':
          result.customerId =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'visit_date':
          result.visitDate =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'location':
          result.location =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'notes':
          result.notes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'activities_done':
          result.activitiesDone.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(String),
                  ]),
                )!
                as BuiltList<Object?>,
          );
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

class _$VisitRequestSerializer implements StructuredSerializer<VisitRequest> {
  @override
  final Iterable<Type> types = const [VisitRequest, _$VisitRequest];
  @override
  final String wireName = 'VisitRequest';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    VisitRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.visitDate;
    if (value != null) {
      result
        ..add('visit_date')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.activitiesDone;
    if (value != null) {
      result
        ..add('activities_done')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(List, const [const FullType(String)]),
          ),
        );
    }
    return result;
  }

  @override
  VisitRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VisitRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customer_id':
          result.customerId =
              serializers.deserialize(value, specifiedType: const FullType(int))
                  as int?;
          break;
        case 'visit_date':
          result.visitDate =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'status':
          result.status =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'location':
          result.location =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'notes':
          result.notes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'activities_done':
          result.activitiesDone =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(List, const [
                      const FullType(String),
                    ]),
                  )
                  as List<String>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VisitsModel extends VisitsModel {
  @override
  final BuiltList<VisitModel>? visits;

  factory _$VisitsModel([void Function(VisitsModelBuilder)? updates]) =>
      (VisitsModelBuilder()..update(updates))._build();

  _$VisitsModel._({this.visits}) : super._();
  @override
  VisitsModel rebuild(void Function(VisitsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisitsModelBuilder toBuilder() => VisitsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VisitsModel && visits == other.visits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'VisitsModel',
    )..add('visits', visits)).toString();
  }
}

class VisitsModelBuilder implements Builder<VisitsModel, VisitsModelBuilder> {
  _$VisitsModel? _$v;

  ListBuilder<VisitModel>? _visits;
  ListBuilder<VisitModel> get visits =>
      _$this._visits ??= ListBuilder<VisitModel>();
  set visits(ListBuilder<VisitModel>? visits) => _$this._visits = visits;

  VisitsModelBuilder();

  VisitsModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visits = $v.visits?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VisitsModel other) {
    _$v = other as _$VisitsModel;
  }

  @override
  void update(void Function(VisitsModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VisitsModel build() => _build();

  _$VisitsModel _build() {
    _$VisitsModel _$result;
    try {
      _$result = _$v ?? _$VisitsModel._(visits: _visits?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'visits';
        _visits?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VisitsModel',
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

class _$VisitModel extends VisitModel {
  @override
  final int? id;
  @override
  final int? customerId;
  @override
  final String? visitDate;
  @override
  final String? status;
  @override
  final String? location;
  @override
  final String? notes;
  @override
  final BuiltList<String>? activitiesDone;
  @override
  final String? createdAt;

  factory _$VisitModel([void Function(VisitModelBuilder)? updates]) =>
      (VisitModelBuilder()..update(updates))._build();

  _$VisitModel._({
    this.id,
    this.customerId,
    this.visitDate,
    this.status,
    this.location,
    this.notes,
    this.activitiesDone,
    this.createdAt,
  }) : super._();
  @override
  VisitModel rebuild(void Function(VisitModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisitModelBuilder toBuilder() => VisitModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VisitModel &&
        id == other.id &&
        customerId == other.customerId &&
        visitDate == other.visitDate &&
        status == other.status &&
        location == other.location &&
        notes == other.notes &&
        activitiesDone == other.activitiesDone &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, visitDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, activitiesDone.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VisitModel')
          ..add('id', id)
          ..add('customerId', customerId)
          ..add('visitDate', visitDate)
          ..add('status', status)
          ..add('location', location)
          ..add('notes', notes)
          ..add('activitiesDone', activitiesDone)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class VisitModelBuilder implements Builder<VisitModel, VisitModelBuilder> {
  _$VisitModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _visitDate;
  String? get visitDate => _$this._visitDate;
  set visitDate(String? visitDate) => _$this._visitDate = visitDate;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ListBuilder<String>? _activitiesDone;
  ListBuilder<String> get activitiesDone =>
      _$this._activitiesDone ??= ListBuilder<String>();
  set activitiesDone(ListBuilder<String>? activitiesDone) =>
      _$this._activitiesDone = activitiesDone;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  VisitModelBuilder();

  VisitModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customerId = $v.customerId;
      _visitDate = $v.visitDate;
      _status = $v.status;
      _location = $v.location;
      _notes = $v.notes;
      _activitiesDone = $v.activitiesDone?.toBuilder();
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VisitModel other) {
    _$v = other as _$VisitModel;
  }

  @override
  void update(void Function(VisitModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VisitModel build() => _build();

  _$VisitModel _build() {
    _$VisitModel _$result;
    try {
      _$result =
          _$v ??
          _$VisitModel._(
            id: id,
            customerId: customerId,
            visitDate: visitDate,
            status: status,
            location: location,
            notes: notes,
            activitiesDone: _activitiesDone?.build(),
            createdAt: createdAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activitiesDone';
        _activitiesDone?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VisitModel',
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

class _$VisitRequest extends VisitRequest {
  @override
  final int? customerId;
  @override
  final String? visitDate;
  @override
  final String? status;
  @override
  final String? location;
  @override
  final String? notes;
  @override
  final List<String>? activitiesDone;

  factory _$VisitRequest([void Function(VisitRequestBuilder)? updates]) =>
      (VisitRequestBuilder()..update(updates))._build();

  _$VisitRequest._({
    this.customerId,
    this.visitDate,
    this.status,
    this.location,
    this.notes,
    this.activitiesDone,
  }) : super._();
  @override
  VisitRequest rebuild(void Function(VisitRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisitRequestBuilder toBuilder() => VisitRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VisitRequest &&
        customerId == other.customerId &&
        visitDate == other.visitDate &&
        status == other.status &&
        location == other.location &&
        notes == other.notes &&
        activitiesDone == other.activitiesDone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, visitDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, activitiesDone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VisitRequest')
          ..add('customerId', customerId)
          ..add('visitDate', visitDate)
          ..add('status', status)
          ..add('location', location)
          ..add('notes', notes)
          ..add('activitiesDone', activitiesDone))
        .toString();
  }
}

class VisitRequestBuilder
    implements Builder<VisitRequest, VisitRequestBuilder> {
  _$VisitRequest? _$v;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  String? _visitDate;
  String? get visitDate => _$this._visitDate;
  set visitDate(String? visitDate) => _$this._visitDate = visitDate;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  List<String>? _activitiesDone;
  List<String>? get activitiesDone => _$this._activitiesDone;
  set activitiesDone(List<String>? activitiesDone) =>
      _$this._activitiesDone = activitiesDone;

  VisitRequestBuilder();

  VisitRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _visitDate = $v.visitDate;
      _status = $v.status;
      _location = $v.location;
      _notes = $v.notes;
      _activitiesDone = $v.activitiesDone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VisitRequest other) {
    _$v = other as _$VisitRequest;
  }

  @override
  void update(void Function(VisitRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VisitRequest build() => _build();

  _$VisitRequest _build() {
    final _$result =
        _$v ??
        _$VisitRequest._(
          customerId: customerId,
          visitDate: visitDate,
          status: status,
          location: location,
          notes: notes,
          activitiesDone: activitiesDone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
