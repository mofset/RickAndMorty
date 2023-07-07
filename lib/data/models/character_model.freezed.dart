// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) {
  return _CharacterModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @StringToCharacterStatusConverter()
  @enumerated
  @Index()
  CharacterStatus get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @StringToCharacterGenderConverter()
  @enumerated
  @Index()
  CharacterGender get gender => throw _privateConstructorUsedError;
  NameWithUrlModel get origin => throw _privateConstructorUsedError;
  NameWithUrlModel get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<int>? get fullImage => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  @Index()
  bool get isFavourite => throw _privateConstructorUsedError;
  @TimestampSerializer()
  DateTime? get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterModelCopyWith<CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterModelCopyWith<$Res> {
  factory $CharacterModelCopyWith(
          CharacterModel value, $Res Function(CharacterModel) then) =
      _$CharacterModelCopyWithImpl<$Res, CharacterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      String name,
      @StringToCharacterStatusConverter()
      @enumerated
      @Index()
      CharacterStatus status,
      String species,
      String type,
      @StringToCharacterGenderConverter()
      @enumerated
      @Index()
      CharacterGender gender,
      NameWithUrlModel origin,
      NameWithUrlModel location,
      String image,
      List<int>? fullImage,
      List<String> episode,
      String url,
      String created,
      @Index() bool isFavourite,
      @TimestampSerializer() DateTime? timestamp});

  $NameWithUrlModelCopyWith<$Res> get origin;
  $NameWithUrlModelCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterModelCopyWithImpl<$Res, $Val extends CharacterModel>
    implements $CharacterModelCopyWith<$Res> {
  _$CharacterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? fullImage = freezed,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
    Object? isFavourite = null,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as NameWithUrlModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NameWithUrlModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fullImage: freezed == fullImage
          ? _value.fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameWithUrlModelCopyWith<$Res> get origin {
    return $NameWithUrlModelCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameWithUrlModelCopyWith<$Res> get location {
    return $NameWithUrlModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharacterModelCopyWith<$Res>
    implements $CharacterModelCopyWith<$Res> {
  factory _$$_CharacterModelCopyWith(
          _$_CharacterModel value, $Res Function(_$_CharacterModel) then) =
      __$$_CharacterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      String name,
      @StringToCharacterStatusConverter()
      @enumerated
      @Index()
      CharacterStatus status,
      String species,
      String type,
      @StringToCharacterGenderConverter()
      @enumerated
      @Index()
      CharacterGender gender,
      NameWithUrlModel origin,
      NameWithUrlModel location,
      String image,
      List<int>? fullImage,
      List<String> episode,
      String url,
      String created,
      @Index() bool isFavourite,
      @TimestampSerializer() DateTime? timestamp});

  @override
  $NameWithUrlModelCopyWith<$Res> get origin;
  @override
  $NameWithUrlModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$_CharacterModelCopyWithImpl<$Res>
    extends _$CharacterModelCopyWithImpl<$Res, _$_CharacterModel>
    implements _$$_CharacterModelCopyWith<$Res> {
  __$$_CharacterModelCopyWithImpl(
      _$_CharacterModel _value, $Res Function(_$_CharacterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? fullImage = freezed,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
    Object? isFavourite = null,
    Object? timestamp = freezed,
  }) {
    return _then(_$_CharacterModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as NameWithUrlModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as NameWithUrlModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      fullImage: freezed == fullImage
          ? _value._fullImage
          : fullImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterModel extends _CharacterModel with DiagnosticableTreeMixin {
  const _$_CharacterModel(
      {@JsonKey(name: 'id') required this.id,
      required this.name,
      @StringToCharacterStatusConverter()
      @enumerated
      @Index()
      required this.status,
      required this.species,
      required this.type,
      @StringToCharacterGenderConverter()
      @enumerated
      @Index()
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      final List<int>? fullImage,
      required final List<String> episode,
      required this.url,
      required this.created,
      @Index() this.isFavourite = false,
      @TimestampSerializer() this.timestamp})
      : _fullImage = fullImage,
        _episode = episode,
        super._();

  factory _$_CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  final String name;
  @override
  @StringToCharacterStatusConverter()
  @enumerated
  @Index()
  final CharacterStatus status;
  @override
  final String species;
  @override
  final String type;
  @override
  @StringToCharacterGenderConverter()
  @enumerated
  @Index()
  final CharacterGender gender;
  @override
  final NameWithUrlModel origin;
  @override
  final NameWithUrlModel location;
  @override
  final String image;
  final List<int>? _fullImage;
  @override
  List<int>? get fullImage {
    final value = _fullImage;
    if (value == null) return null;
    if (_fullImage is EqualUnmodifiableListView) return _fullImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _episode;
  @override
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  final String url;
  @override
  final String created;
  @override
  @JsonKey()
  @Index()
  final bool isFavourite;
  @override
  @TimestampSerializer()
  final DateTime? timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, fullImage: $fullImage, episode: $episode, url: $url, created: $created, isFavourite: $isFavourite, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('origin', origin))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('fullImage', fullImage))
      ..add(DiagnosticsProperty('episode', episode))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('created', created))
      ..add(DiagnosticsProperty('isFavourite', isFavourite))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._fullImage, _fullImage) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(_fullImage),
      const DeepCollectionEquality().hash(_episode),
      url,
      created,
      isFavourite,
      timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      __$$_CharacterModelCopyWithImpl<_$_CharacterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterModelToJson(
      this,
    );
  }
}

abstract class _CharacterModel extends CharacterModel {
  const factory _CharacterModel(
      {@JsonKey(name: 'id') required final int id,
      required final String name,
      @StringToCharacterStatusConverter()
      @enumerated
      @Index()
      required final CharacterStatus status,
      required final String species,
      required final String type,
      @StringToCharacterGenderConverter()
      @enumerated
      @Index()
      required final CharacterGender gender,
      required final NameWithUrlModel origin,
      required final NameWithUrlModel location,
      required final String image,
      final List<int>? fullImage,
      required final List<String> episode,
      required final String url,
      required final String created,
      @Index() final bool isFavourite,
      @TimestampSerializer() final DateTime? timestamp}) = _$_CharacterModel;
  const _CharacterModel._() : super._();

  factory _CharacterModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  String get name;
  @override
  @StringToCharacterStatusConverter()
  @enumerated
  @Index()
  CharacterStatus get status;
  @override
  String get species;
  @override
  String get type;
  @override
  @StringToCharacterGenderConverter()
  @enumerated
  @Index()
  CharacterGender get gender;
  @override
  NameWithUrlModel get origin;
  @override
  NameWithUrlModel get location;
  @override
  String get image;
  @override
  List<int>? get fullImage;
  @override
  List<String> get episode;
  @override
  String get url;
  @override
  String get created;
  @override
  @Index()
  bool get isFavourite;
  @override
  @TimestampSerializer()
  DateTime? get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterModelCopyWith<_$_CharacterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
