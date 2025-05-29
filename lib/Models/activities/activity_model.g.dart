// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivitiesModel> _$activitiesModelSerializer =
    _$ActivitiesModelSerializer();
Serializer<ActivityModel> _$activityModelSerializer =
    _$ActivityModelSerializer();

class _$ActivitiesModelSerializer
    implements StructuredSerializer<ActivitiesModel> {
  @override
  final Iterable<Type> types = const [ActivitiesModel, _$ActivitiesModel];
  @override
  final String wireName = 'ActivitiesModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ActivitiesModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[];
    Object? value;
    value = object.activities;
    if (value != null) {
      result
        ..add('activities')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(ActivityModel),
            ]),
          ),
        );
    }
    return result;
  }

  @override
  ActivitiesModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivitiesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'activities':
          result.activities.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(ActivityModel),
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

class _$ActivityModelSerializer implements StructuredSerializer<ActivityModel> {
  @override
  final Iterable<Type> types = const [ActivityModel, _$ActivityModel];
  @override
  final String wireName = 'ActivityModel';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ActivityModel object, {
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  ActivityModel deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityModelBuilder();

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
        case 'description':
          result.description =
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

class _$ActivitiesModel extends ActivitiesModel {
  @override
  final BuiltList<ActivityModel>? activities;

  factory _$ActivitiesModel([void Function(ActivitiesModelBuilder)? updates]) =>
      (ActivitiesModelBuilder()..update(updates))._build();

  _$ActivitiesModel._({this.activities}) : super._();
  @override
  ActivitiesModel rebuild(void Function(ActivitiesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivitiesModelBuilder toBuilder() => ActivitiesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivitiesModel && activities == other.activities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ActivitiesModel',
    )..add('activities', activities)).toString();
  }
}

class ActivitiesModelBuilder
    implements Builder<ActivitiesModel, ActivitiesModelBuilder> {
  _$ActivitiesModel? _$v;

  ListBuilder<ActivityModel>? _activities;
  ListBuilder<ActivityModel> get activities =>
      _$this._activities ??= ListBuilder<ActivityModel>();
  set activities(ListBuilder<ActivityModel>? activities) =>
      _$this._activities = activities;

  ActivitiesModelBuilder();

  ActivitiesModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activities = $v.activities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivitiesModel other) {
    _$v = other as _$ActivitiesModel;
  }

  @override
  void update(void Function(ActivitiesModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivitiesModel build() => _build();

  _$ActivitiesModel _build() {
    _$ActivitiesModel _$result;
    try {
      _$result = _$v ?? _$ActivitiesModel._(activities: _activities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activities';
        _activities?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ActivitiesModel',
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

class _$ActivityModel extends ActivityModel {
  @override
  final int? id;
  @override
  final String? description;
  @override
  final String? createdAt;

  factory _$ActivityModel([void Function(ActivityModelBuilder)? updates]) =>
      (ActivityModelBuilder()..update(updates))._build();

  _$ActivityModel._({this.id, this.description, this.createdAt}) : super._();
  @override
  ActivityModel rebuild(void Function(ActivityModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityModelBuilder toBuilder() => ActivityModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityModel &&
        id == other.id &&
        description == other.description &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivityModel')
          ..add('id', id)
          ..add('description', description)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ActivityModelBuilder
    implements Builder<ActivityModel, ActivityModelBuilder> {
  _$ActivityModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ActivityModelBuilder();

  ActivityModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivityModel other) {
    _$v = other as _$ActivityModel;
  }

  @override
  void update(void Function(ActivityModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityModel build() => _build();

  _$ActivityModel _build() {
    final _$result =
        _$v ??
        _$ActivityModel._(
          id: id,
          description: description,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
