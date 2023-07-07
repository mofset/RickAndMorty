// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'character_model.dart';
import 'info_model.dart';

part 'characters_response_model.freezed.dart';
part 'characters_response_model.g.dart';

@freezed
class CharactersResponseModel with _$CharactersResponseModel {
  const factory CharactersResponseModel({
    required InfoModel info,
    @JsonKey(name: 'results') required List<CharacterModel> characters,
  }) = _CharactersResponseModel;

  factory CharactersResponseModel.fromJson(Map<String, Object?> json) =>
      _$CharactersResponseModelFromJson(json);
}
