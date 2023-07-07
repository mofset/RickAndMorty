// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_with_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NameWithUrlModel _$NameWithUrlModelFromJson(Map<String, dynamic> json) {
  return _NameWithUrlModel.fromJson(json);
}

/// @nodoc
mixin _$NameWithUrlModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameWithUrlModelCopyWith<NameWithUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameWithUrlModelCopyWith<$Res> {
  factory $NameWithUrlModelCopyWith(
          NameWithUrlModel value, $Res Function(NameWithUrlModel) then) =
      _$NameWithUrlModelCopyWithImpl<$Res, NameWithUrlModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$NameWithUrlModelCopyWithImpl<$Res, $Val extends NameWithUrlModel>
    implements $NameWithUrlModelCopyWith<$Res> {
  _$NameWithUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameWithUrlModelCopyWith<$Res>
    implements $NameWithUrlModelCopyWith<$Res> {
  factory _$$_NameWithUrlModelCopyWith(
          _$_NameWithUrlModel value, $Res Function(_$_NameWithUrlModel) then) =
      __$$_NameWithUrlModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$_NameWithUrlModelCopyWithImpl<$Res>
    extends _$NameWithUrlModelCopyWithImpl<$Res, _$_NameWithUrlModel>
    implements _$$_NameWithUrlModelCopyWith<$Res> {
  __$$_NameWithUrlModelCopyWithImpl(
      _$_NameWithUrlModel _value, $Res Function(_$_NameWithUrlModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$_NameWithUrlModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NameWithUrlModel
    with DiagnosticableTreeMixin
    implements _NameWithUrlModel {
  const _$_NameWithUrlModel({this.name = '', this.url = ''});

  factory _$_NameWithUrlModel.fromJson(Map<String, dynamic> json) =>
      _$$_NameWithUrlModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NameWithUrlModel(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NameWithUrlModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameWithUrlModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameWithUrlModelCopyWith<_$_NameWithUrlModel> get copyWith =>
      __$$_NameWithUrlModelCopyWithImpl<_$_NameWithUrlModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameWithUrlModelToJson(
      this,
    );
  }
}

abstract class _NameWithUrlModel implements NameWithUrlModel {
  const factory _NameWithUrlModel({final String name, final String url}) =
      _$_NameWithUrlModel;

  factory _NameWithUrlModel.fromJson(Map<String, dynamic> json) =
      _$_NameWithUrlModel.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_NameWithUrlModelCopyWith<_$_NameWithUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}
