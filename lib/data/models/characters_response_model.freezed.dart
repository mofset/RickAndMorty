// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharactersResponseModel _$CharactersResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CharactersResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CharactersResponseModel {
  InfoModel get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<CharacterModel> get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersResponseModelCopyWith<CharactersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersResponseModelCopyWith<$Res> {
  factory $CharactersResponseModelCopyWith(CharactersResponseModel value,
          $Res Function(CharactersResponseModel) then) =
      _$CharactersResponseModelCopyWithImpl<$Res, CharactersResponseModel>;
  @useResult
  $Res call(
      {InfoModel info,
      @JsonKey(name: 'results') List<CharacterModel> characters});

  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$CharactersResponseModelCopyWithImpl<$Res,
        $Val extends CharactersResponseModel>
    implements $CharactersResponseModelCopyWith<$Res> {
  _$CharactersResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoModelCopyWith<$Res> get info {
    return $InfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharactersResponseModelCopyWith<$Res>
    implements $CharactersResponseModelCopyWith<$Res> {
  factory _$$_CharactersResponseModelCopyWith(_$_CharactersResponseModel value,
          $Res Function(_$_CharactersResponseModel) then) =
      __$$_CharactersResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InfoModel info,
      @JsonKey(name: 'results') List<CharacterModel> characters});

  @override
  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$_CharactersResponseModelCopyWithImpl<$Res>
    extends _$CharactersResponseModelCopyWithImpl<$Res,
        _$_CharactersResponseModel>
    implements _$$_CharactersResponseModelCopyWith<$Res> {
  __$$_CharactersResponseModelCopyWithImpl(_$_CharactersResponseModel _value,
      $Res Function(_$_CharactersResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? characters = null,
  }) {
    return _then(_$_CharactersResponseModel(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharactersResponseModel
    with DiagnosticableTreeMixin
    implements _CharactersResponseModel {
  const _$_CharactersResponseModel(
      {required this.info,
      @JsonKey(name: 'results') required final List<CharacterModel> characters})
      : _characters = characters;

  factory _$_CharactersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharactersResponseModelFromJson(json);

  @override
  final InfoModel info;
  final List<CharacterModel> _characters;
  @override
  @JsonKey(name: 'results')
  List<CharacterModel> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersResponseModel(info: $info, characters: $characters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersResponseModel'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('characters', characters));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersResponseModel &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersResponseModelCopyWith<_$_CharactersResponseModel>
      get copyWith =>
          __$$_CharactersResponseModelCopyWithImpl<_$_CharactersResponseModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharactersResponseModelToJson(
      this,
    );
  }
}

abstract class _CharactersResponseModel implements CharactersResponseModel {
  const factory _CharactersResponseModel(
          {required final InfoModel info,
          @JsonKey(name: 'results')
          required final List<CharacterModel> characters}) =
      _$_CharactersResponseModel;

  factory _CharactersResponseModel.fromJson(Map<String, dynamic> json) =
      _$_CharactersResponseModel.fromJson;

  @override
  InfoModel get info;
  @override
  @JsonKey(name: 'results')
  List<CharacterModel> get characters;
  @override
  @JsonKey(ignore: true)
  _$$_CharactersResponseModelCopyWith<_$_CharactersResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
