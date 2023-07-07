// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainPageController on _MainPageController, Store {
  Computed<bool>? _$isClearFiltersBtnEnabledComputed;

  @override
  bool get isClearFiltersBtnEnabled => (_$isClearFiltersBtnEnabledComputed ??=
          Computed<bool>(() => super.isClearFiltersBtnEnabled,
              name: '_MainPageController.isClearFiltersBtnEnabled'))
      .value;

  late final _$_stateAtom =
      Atom(name: '_MainPageController._state', context: context);

  @override
  AsyncCallState<List<CharacterModel>> get _state {
    _$_stateAtom.reportRead();
    return super._state;
  }

  @override
  set _state(AsyncCallState<List<CharacterModel>> value) {
    _$_stateAtom.reportWrite(value, super._state, () {
      super._state = value;
    });
  }

  late final _$_filterModelAtom =
      Atom(name: '_MainPageController._filterModel', context: context);

  FilterModel get filterModel {
    _$_filterModelAtom.reportRead();
    return super._filterModel;
  }

  @override
  FilterModel get _filterModel => filterModel;

  @override
  set _filterModel(FilterModel value) {
    _$_filterModelAtom.reportWrite(value, super._filterModel, () {
      super._filterModel = value;
    });
  }

  late final _$_isFiltersPanelExpandedAtom = Atom(
      name: '_MainPageController._isFiltersPanelExpanded', context: context);

  bool get isFiltersPanelExpanded {
    _$_isFiltersPanelExpandedAtom.reportRead();
    return super._isFiltersPanelExpanded;
  }

  @override
  bool get _isFiltersPanelExpanded => isFiltersPanelExpanded;

  @override
  set _isFiltersPanelExpanded(bool value) {
    _$_isFiltersPanelExpandedAtom
        .reportWrite(value, super._isFiltersPanelExpanded, () {
      super._isFiltersPanelExpanded = value;
    });
  }

  late final _$_isOnlineAtom =
      Atom(name: '_MainPageController._isOnline', context: context);

  bool get isOnline {
    _$_isOnlineAtom.reportRead();
    return super._isOnline;
  }

  @override
  bool get _isOnline => isOnline;

  @override
  set _isOnline(bool value) {
    _$_isOnlineAtom.reportWrite(value, super._isOnline, () {
      super._isOnline = value;
    });
  }

  late final _$_nameControllerAtom =
      Atom(name: '_MainPageController._nameController', context: context);

  TextEditingController get nameController {
    _$_nameControllerAtom.reportRead();
    return super._nameController;
  }

  @override
  TextEditingController get _nameController => nameController;

  @override
  set _nameController(TextEditingController value) {
    _$_nameControllerAtom.reportWrite(value, super._nameController, () {
      super._nameController = value;
    });
  }

  late final _$_speciesControllerAtom =
      Atom(name: '_MainPageController._speciesController', context: context);

  TextEditingController get speciesController {
    _$_speciesControllerAtom.reportRead();
    return super._speciesController;
  }

  @override
  TextEditingController get _speciesController => speciesController;

  @override
  set _speciesController(TextEditingController value) {
    _$_speciesControllerAtom.reportWrite(value, super._speciesController, () {
      super._speciesController = value;
    });
  }

  late final _$fetchCharactersFromApiAsyncAsyncAction = AsyncAction(
      '_MainPageController.fetchCharactersFromApiAsync',
      context: context);

  @override
  Future<void> fetchCharactersFromApiAsync([bool refresh = false]) {
    return _$fetchCharactersFromApiAsyncAsyncAction
        .run(() => super.fetchCharactersFromApiAsync(refresh));
  }

  late final _$fetchCharactersFromDbAsyncAsyncAction = AsyncAction(
      '_MainPageController.fetchCharactersFromDbAsync',
      context: context);

  @override
  Future<void> fetchCharactersFromDbAsync() {
    return _$fetchCharactersFromDbAsyncAsyncAction
        .run(() => super.fetchCharactersFromDbAsync());
  }

  late final _$onCharacterCardTappedAsyncAction = AsyncAction(
      '_MainPageController.onCharacterCardTapped',
      context: context);

  @override
  Future<void> onCharacterCardTapped(CharacterModel character) {
    return _$onCharacterCardTappedAsyncAction
        .run(() => super.onCharacterCardTapped(character));
  }

  late final _$onCharacterStatusFilterChangedAsyncAsyncAction = AsyncAction(
      '_MainPageController.onCharacterStatusFilterChangedAsync',
      context: context);

  @override
  Future<void> onCharacterStatusFilterChangedAsync(CharacterStatus? status) {
    return _$onCharacterStatusFilterChangedAsyncAsyncAction
        .run(() => super.onCharacterStatusFilterChangedAsync(status));
  }

  late final _$onCharacterGenderFilterChangedAsyncAsyncAction = AsyncAction(
      '_MainPageController.onCharacterGenderFilterChangedAsync',
      context: context);

  @override
  Future<void> onCharacterGenderFilterChangedAsync(CharacterGender? gender) {
    return _$onCharacterGenderFilterChangedAsyncAsyncAction
        .run(() => super.onCharacterGenderFilterChangedAsync(gender));
  }

  late final _$onCharacterSpeciesFilterChangedAsyncAsyncAction = AsyncAction(
      '_MainPageController.onCharacterSpeciesFilterChangedAsync',
      context: context);

  @override
  Future<void> onCharacterSpeciesFilterChangedAsync(String characterSpecies) {
    return _$onCharacterSpeciesFilterChangedAsyncAsyncAction.run(
        () => super.onCharacterSpeciesFilterChangedAsync(characterSpecies));
  }

  late final _$onCharacterNameFilterChangedAsyncAsyncAction = AsyncAction(
      '_MainPageController.onCharacterNameFilterChangedAsync',
      context: context);

  @override
  Future<void> onCharacterNameFilterChangedAsync(String name) {
    return _$onCharacterNameFilterChangedAsyncAsyncAction
        .run(() => super.onCharacterNameFilterChangedAsync(name));
  }

  late final _$onClearAllFiltersBtnPressedAsyncAsyncAction = AsyncAction(
      '_MainPageController.onClearAllFiltersBtnPressedAsync',
      context: context);

  @override
  Future<void> onClearAllFiltersBtnPressedAsync() {
    return _$onClearAllFiltersBtnPressedAsyncAsyncAction
        .run(() => super.onClearAllFiltersBtnPressedAsync());
  }

  late final _$refreshAsyncAsyncAction =
      AsyncAction('_MainPageController.refreshAsync', context: context);

  @override
  Future<void> refreshAsync() {
    return _$refreshAsyncAsyncAction.run(() => super.refreshAsync());
  }

  late final _$_MainPageControllerActionController =
      ActionController(name: '_MainPageController', context: context);

  @override
  void onFiltersPanelHideBtnPressed() {
    final _$actionInfo = _$_MainPageControllerActionController.startAction(
        name: '_MainPageController.onFiltersPanelHideBtnPressed');
    try {
      return super.onFiltersPanelHideBtnPressed();
    } finally {
      _$_MainPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onFiltersPanelShowBtnPressed() {
    final _$actionInfo = _$_MainPageControllerActionController.startAction(
        name: '_MainPageController.onFiltersPanelShowBtnPressed');
    try {
      return super.onFiltersPanelShowBtnPressed();
    } finally {
      _$_MainPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onConnectionStatusChange(bool isOnline) {
    final _$actionInfo = _$_MainPageControllerActionController.startAction(
        name: '_MainPageController.onConnectionStatusChange');
    try {
      return super.onConnectionStatusChange(isOnline);
    } finally {
      _$_MainPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isClearFiltersBtnEnabled: ${isClearFiltersBtnEnabled}
    ''';
  }
}
