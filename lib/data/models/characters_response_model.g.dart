// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharactersResponseModel _$$_CharactersResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharactersResponseModel(
      info: InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      characters: (json['results'] as List<dynamic>)
          .map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CharactersResponseModelToJson(
        _$_CharactersResponseModel instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.characters,
    };
