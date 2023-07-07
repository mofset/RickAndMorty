// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty/services/database_service_interface.dart';

import '../../app_config.dart';
import '../../data/models/character_model.dart';
import '../../data/models/filters_model.dart';
import '../../data/repositories/characters_repository.dart';
import '../states/async_call_states.dart';

part 'main_page_controller.g.dart';

class MainPageController extends _MainPageController with _$MainPageController {
  MainPageController({required super.restClient, required super.dBService});
}

abstract class _MainPageController with Store {
  final RestClient _restClient;
  final IDatabaseService _dbService;
  _MainPageController({
    required RestClient restClient,
    required IDatabaseService dBService,
  })  : _restClient = restClient,
        _dbService = dBService;

  @observable
  AsyncCallState<List<CharacterModel>> _state = const AsyncCallState.loading();

  AsyncCallState<List<CharacterModel>> get state => _state;

  List<CharacterModel> _characters = [];

  @readonly
  FilterModel _filterModel = const FilterModel();

  @readonly
  bool _isFiltersPanelExpanded = false;

  @readonly
  bool _isOnline = true;

  @readonly
  TextEditingController _nameController = TextEditingController();

  @readonly
  TextEditingController _speciesController = TextEditingController();

  @computed
  bool get isClearFiltersBtnEnabled =>
      _filterModel.characterGender != null ||
      _filterModel.characterName != null ||
      _filterModel.characterSpecies != null ||
      _filterModel.characterStatus != null;

  bool checkDataUpToDate(DateTime timestamp) =>
      DateTime.now().difference(timestamp).inHours < AppConfig.resyncTimeInHours
          ? true
          : false;

  @action
  Future<void> fetchCharactersFromApiAsync([bool refresh = false]) async {
    _state = const AsyncCallState.loading();
    _characters = [];

    if (!refresh && await _dbService.getSingleCharacterAsync() != null) {
      final timestamp =
          (await _dbService.getSingleCharacterAsync())?.timestamp ??
              DateTime.now();
      if (checkDataUpToDate(timestamp)) {
        _characters.addAll(await _dbService.getAllCharactersFromDbAsync());
        _state = AsyncCallState.data(_characters);
        return;
      }
    }

    try {
      final response = await _restClient.getCharactersAsync();

      _characters.addAll(response.characters);
      int numOfPages = response.info.pages;

      if (numOfPages > 1) {
        for (var i = 2; i <= numOfPages; i++) {
          final result = await _restClient.getCharactersAsync(page: i);

          _characters.addAll(result.characters);
        }
      }

      final favourites = await _dbService.getFavouritesAsync();

      for (int i = 0; i < favourites.length; i++) {
        final idx = _characters
            .indexWhere((element) => element.name == favourites[i].name);

        if (idx != -1) {
          _characters[idx] = _characters[idx].copyWith(isFavourite: true);
        }
      }
      await _dbService.dumpDatabaseAsync();
      await _dbService.saveCharactersToDbAsync(_characters);

      _isOnline = true;

      _state = AsyncCallState.data(_characters);
      return;
    } on DioException catch (e) {
      log(e.toString());
      _isOnline = false;
      _state = const AsyncCallState.error('Error');

      if (await _dbService.numOfElementsAsync() > 0) {
        _characters = await _dbService.getAllCharactersFromDbAsync();
        _state = AsyncCallState.data(_characters);

        return;
      } else if (_characters.isNotEmpty) {
        _state = AsyncCallState.data(_characters);
      } else {
        _state = const AsyncCallState.data([]);
      }

      return;
    }
  }

  @action
  Future<void> fetchCharactersFromDbAsync() async {
    if (await _dbService.numOfElementsAsync() > 0) {
      _characters = await _dbService.getAllCharactersFromDbAsync();
      _state = AsyncCallState.data(_characters);
    }
    return;
  }

  @action
  Future<void> onCharacterCardTapped(CharacterModel character) async {
    CharacterModel? characterToUpdate =
        await _dbService.getSingleCharacterAsync(character.id);
    characterToUpdate = characterToUpdate?.copyWith(
        isFavourite: !characterToUpdate.isFavourite);

    await _dbService.updateSingleCharacterAsync(characterToUpdate!);
    _characters = await _dbService.findCharactersAsync(_filterModel);

    _state = AsyncCallState.data(_characters);

    return;
  }

  @action
  Future<void> onCharacterStatusFilterChangedAsync(
      CharacterStatus? status) async {
    _filterModel = _filterModel.copyWith(characterStatus: status);

    await applyFiltersAsync();
  }

  @action
  Future<void> onCharacterGenderFilterChangedAsync(
      CharacterGender? gender) async {
    _filterModel = _filterModel.copyWith(characterGender: gender);

    await applyFiltersAsync();
  }

  @action
  Future<void> onCharacterSpeciesFilterChangedAsync(
      String characterSpecies) async {
    _filterModel =
        _filterModel.copyWith(characterSpecies: characterSpecies.trim());

    await applyFiltersAsync();
  }

  @action
  Future<void> onCharacterNameFilterChangedAsync(String name) async {
    _filterModel = _filterModel.copyWith(characterName: name.trim());

    await applyFiltersAsync();
  }

  @action
  Future<void> onClearAllFiltersBtnPressedAsync() async {
    clearFilters();

    await applyFiltersAsync();
  }

  Future<void> applyFiltersAsync() async {
    _characters = await _dbService.findCharactersAsync(_filterModel);
    _state = AsyncCallState.data(_characters);
    return;
  }

  @action
  void onFiltersPanelHideBtnPressed() {
    _isFiltersPanelExpanded = false;
  }

  @action
  void onFiltersPanelShowBtnPressed() {
    _isFiltersPanelExpanded = true;
  }

  @action
  Future<void> refreshAsync() async {
    clearFilters();
    _isFiltersPanelExpanded = false;
    await fetchCharactersFromApiAsync(true);
  }

  void clearFilters() {
    _filterModel = const FilterModel();
    _nameController.clear();
    _speciesController.clear();
  }

  @action
  void onConnectionStatusChange(bool isOnline) {
    _isOnline = isOnline;
  }
}
