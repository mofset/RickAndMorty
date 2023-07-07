// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

import 'name_with_url_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class CharacterModel with _$CharacterModel {
  const CharacterModel._();

  const factory CharacterModel({
    @JsonKey(name: 'id') required int id,
    required String name,
    @StringToCharacterStatusConverter()
    @enumerated
    @Index()
    required CharacterStatus status,
    required String species,
    required String type,
    @StringToCharacterGenderConverter()
    @enumerated
    @Index()
    required CharacterGender gender,
    required NameWithUrlModel origin,
    required NameWithUrlModel location,
    required String image,
    List<int>? fullImage,
    required List<String> episode,
    required String url,
    required String created,
    @Default(false) @Index() bool isFavourite,
    @TimestampSerializer() DateTime? timestamp,
  }) = _CharacterModel;

  @override
  // ignore: recursive_getters
  Id get id => id;

  factory CharacterModel.fromJson(Map<String, Object?> json) =>
      _$CharacterModelFromJson(json);
}

enum CharacterStatus {
  alive(0, "Alive"),
  dead(1, "Dead"),
  unknown(2, "unknown");

  final int value;
  final String name;
  const CharacterStatus(this.value, this.name);
}

enum CharacterGender {
  female(0, "Female"),
  male(1, "Male"),
  genderless(2, "Genderless"),
  unknown(3, "unknown");

  final int value;
  final String name;
  const CharacterGender(this.value, this.name);
}

class StringToCharacterStatusConverter
    implements JsonConverter<CharacterStatus, String> {
  const StringToCharacterStatusConverter();

  @override
  CharacterStatus fromJson(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return CharacterStatus.alive;
      case 'dead':
        return CharacterStatus.dead;
      case 'unknown':
        return CharacterStatus.unknown;
    }

    throw UnsupportedError('Unsupported character status received from API');
  }

  @override
  String toJson(CharacterStatus status) => status.name;
}

class StringToCharacterGenderConverter
    implements JsonConverter<CharacterGender, String> {
  const StringToCharacterGenderConverter();

  @override
  CharacterGender fromJson(String gender) {
    switch (gender.toLowerCase()) {
      case 'female':
        return CharacterGender.female;
      case 'male':
        return CharacterGender.male;
      case 'genderless':
        return CharacterGender.genderless;
      case 'unknown':
        return CharacterGender.unknown;
    }

    throw UnsupportedError('Unsupported character gender received from API');
  }

  @override
  String toJson(CharacterGender gender) => gender.name;
}

class TimestampSerializer implements JsonConverter<DateTime, String> {
  const TimestampSerializer();

  @override
  DateTime fromJson(String timestamp) => DateTime.now();

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
