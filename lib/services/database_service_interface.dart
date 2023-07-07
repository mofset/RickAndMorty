import '../data/models/character_model.dart';
import '../data/models/filters_model.dart';

abstract class IDatabaseService {
  Future<IDatabaseService> initAsync();
  Future<List<int>> saveCharactersToDbAsync(List<CharacterModel> characters);
  Future<List<CharacterModel>> getAllCharactersFromDbAsync();
  Future<CharacterModel?> getSingleCharacterAsync([int? id]);
  Future<void> dumpDatabaseAsync();
  Future<int> numOfElementsAsync();
  Future<int> updateSingleCharacterAsync(CharacterModel characterToUpdate);
  Future<List<CharacterModel>> findCharactersAsync(FilterModel model);
  Future<List<CharacterModel>> getFavouritesAsync();
}
