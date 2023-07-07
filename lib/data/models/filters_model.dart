import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'character_model.dart';

part 'filters_model.freezed.dart';
part 'filters_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    String? characterName,
    String? characterSpecies,
    CharacterGender? characterGender,
    CharacterStatus? characterStatus,
    bool? isFavourite,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, Object?> json) =>
      _$FilterModelFromJson(json);
}
