import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'name_with_url_model.freezed.dart';
part 'name_with_url_model.g.dart';

@freezed
@Embedded(ignore: {'copyWith'})
class NameWithUrlModel with _$NameWithUrlModel {
  const factory NameWithUrlModel({
    @Default('') String name,
    @Default('') String url,
  }) = _NameWithUrlModel;

  factory NameWithUrlModel.fromJson(Map<String, Object?> json) =>
      _$NameWithUrlModelFromJson(json);
}
