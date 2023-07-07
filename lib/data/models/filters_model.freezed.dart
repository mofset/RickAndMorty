// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  String? get characterName => throw _privateConstructorUsedError;
  String? get characterSpecies => throw _privateConstructorUsedError;
  CharacterGender? get characterGender => throw _privateConstructorUsedError;
  CharacterStatus? get characterStatus => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {String? characterName,
      String? characterSpecies,
      CharacterGender? characterGender,
      CharacterStatus? characterStatus,
      bool? isFavourite});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = freezed,
    Object? characterSpecies = freezed,
    Object? characterGender = freezed,
    Object? characterStatus = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      characterName: freezed == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterSpecies: freezed == characterSpecies
          ? _value.characterSpecies
          : characterSpecies // ignore: cast_nullable_to_non_nullable
              as String?,
      characterGender: freezed == characterGender
          ? _value.characterGender
          : characterGender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
      characterStatus: freezed == characterStatus
          ? _value.characterStatus
          : characterStatus // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterModelCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$_FilterModelCopyWith(
          _$_FilterModel value, $Res Function(_$_FilterModel) then) =
      __$$_FilterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? characterName,
      String? characterSpecies,
      CharacterGender? characterGender,
      CharacterStatus? characterStatus,
      bool? isFavourite});
}

/// @nodoc
class __$$_FilterModelCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$_FilterModel>
    implements _$$_FilterModelCopyWith<$Res> {
  __$$_FilterModelCopyWithImpl(
      _$_FilterModel _value, $Res Function(_$_FilterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterName = freezed,
    Object? characterSpecies = freezed,
    Object? characterGender = freezed,
    Object? characterStatus = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_$_FilterModel(
      characterName: freezed == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterSpecies: freezed == characterSpecies
          ? _value.characterSpecies
          : characterSpecies // ignore: cast_nullable_to_non_nullable
              as String?,
      characterGender: freezed == characterGender
          ? _value.characterGender
          : characterGender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
      characterStatus: freezed == characterStatus
          ? _value.characterStatus
          : characterStatus // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterModel with DiagnosticableTreeMixin implements _FilterModel {
  const _$_FilterModel(
      {this.characterName,
      this.characterSpecies,
      this.characterGender,
      this.characterStatus,
      this.isFavourite});

  factory _$_FilterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FilterModelFromJson(json);

  @override
  final String? characterName;
  @override
  final String? characterSpecies;
  @override
  final CharacterGender? characterGender;
  @override
  final CharacterStatus? characterStatus;
  @override
  final bool? isFavourite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterModel(characterName: $characterName, characterSpecies: $characterSpecies, characterGender: $characterGender, characterStatus: $characterStatus, isFavourite: $isFavourite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterModel'))
      ..add(DiagnosticsProperty('characterName', characterName))
      ..add(DiagnosticsProperty('characterSpecies', characterSpecies))
      ..add(DiagnosticsProperty('characterGender', characterGender))
      ..add(DiagnosticsProperty('characterStatus', characterStatus))
      ..add(DiagnosticsProperty('isFavourite', isFavourite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterModel &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName) &&
            (identical(other.characterSpecies, characterSpecies) ||
                other.characterSpecies == characterSpecies) &&
            (identical(other.characterGender, characterGender) ||
                other.characterGender == characterGender) &&
            (identical(other.characterStatus, characterStatus) ||
                other.characterStatus == characterStatus) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characterName, characterSpecies,
      characterGender, characterStatus, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      __$$_FilterModelCopyWithImpl<_$_FilterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterModelToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {final String? characterName,
      final String? characterSpecies,
      final CharacterGender? characterGender,
      final CharacterStatus? characterStatus,
      final bool? isFavourite}) = _$_FilterModel;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$_FilterModel.fromJson;

  @override
  String? get characterName;
  @override
  String? get characterSpecies;
  @override
  CharacterGender? get characterGender;
  @override
  CharacterStatus? get characterStatus;
  @override
  bool? get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
