import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../data/models/character_model.dart';
import '../data/models/filters_model.dart';
import 'database_service_interface.dart';

class DatabaseService implements IDatabaseService {
  late Isar _isar;

  @override
  Future<DatabaseService> initAsync() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([CharacterModelSchema], directory: dir.path);
    return this;
  }

  @override
  Future<List<int>> saveCharactersToDbAsync(
      List<CharacterModel> characters) async {
    return await _isar.writeTxn(
      () async => await _isar.characterModels.putAll(characters),
    );
  }

  @override
  Future<List<CharacterModel>> getAllCharactersFromDbAsync() async {
    return await _isar.characterModels.where().findAll();
  }

  @override
  Future<void> dumpDatabaseAsync() async {
    return await _isar.writeTxn(() async => await _isar.clear());
  }

  @override
  Future<int> numOfElementsAsync() async {
    return await _isar.characterModels.count();
  }

  @override
  Future<CharacterModel?> getSingleCharacterAsync([int? id]) async {
    if (id == null) {
      return await _isar.characterModels.where().findFirst();
    }
    return await _isar.characterModels.get(id);
  }

  @override
  Future<int> updateSingleCharacterAsync(
      CharacterModel characterToUpdate) async {
    return await _isar.writeTxn(
        () async => await _isar.characterModels.put(characterToUpdate));
  }

  @override
  Future<List<CharacterModel>> findCharactersAsync(FilterModel model) async {
    final filteredCharacters = await _isar.characterModels
        .filter()
        .optional(model.characterGender != null,
            (q) => q.genderEqualTo(model.characterGender!))
        .and()
        .optional(model.characterStatus != null,
            (q) => q.statusEqualTo(model.characterStatus!))
        .and()
        .optional(model.characterName != null,
            (q) => q.nameStartsWith(model.characterName!, caseSensitive: false))
        .and()
        .optional(
            model.characterSpecies != null,
            (q) =>
                q.nameStartsWith(model.characterSpecies!, caseSensitive: false))
        .findAll();

    return filteredCharacters;
  }

  @override
  Future<List<CharacterModel>> getFavouritesAsync() async {
    return await _isar.characterModels
        .where()
        .isFavouriteEqualTo(true)
        .findAll();
  }
}
