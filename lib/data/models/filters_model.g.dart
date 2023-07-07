// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterModel _$$_FilterModelFromJson(Map<String, dynamic> json) =>
    _$_FilterModel(
      characterName: json['characterName'] as String?,
      characterSpecies: json['characterSpecies'] as String?,
      characterGender: $enumDecodeNullable(
          _$CharacterGenderEnumMap, json['characterGender']),
      characterStatus: $enumDecodeNullable(
          _$CharacterStatusEnumMap, json['characterStatus']),
      isFavourite: json['isFavourite'] as bool?,
    );

Map<String, dynamic> _$$_FilterModelToJson(_$_FilterModel instance) =>
    <String, dynamic>{
      'characterName': instance.characterName,
      'characterSpecies': instance.characterSpecies,
      'characterGender': _$CharacterGenderEnumMap[instance.characterGender],
      'characterStatus': _$CharacterStatusEnumMap[instance.characterStatus],
      'isFavourite': instance.isFavourite,
    };

const _$CharacterGenderEnumMap = {
  CharacterGender.female: 'female',
  CharacterGender.male: 'male',
  CharacterGender.genderless: 'genderless',
  CharacterGender.unknown: 'unknown',
};

const _$CharacterStatusEnumMap = {
  CharacterStatus.alive: 'alive',
  CharacterStatus.dead: 'dead',
  CharacterStatus.unknown: 'unknown',
};
