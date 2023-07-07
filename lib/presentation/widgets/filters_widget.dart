import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../data/models/character_model.dart';
import '../../injection.dart';
import '../controllers/main_page_controller.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({super.key});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  final _mainPageController = getIt<MainPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Filters:',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Observer(builder: (_) {
                    return ElevatedButton(
                        onPressed: _mainPageController.isClearFiltersBtnEnabled
                            ? () => _mainPageController
                                .onClearAllFiltersBtnPressedAsync()
                            : null,
                        child: const Text('Clear All'));
                  }),
                  Observer(builder: (_) {
                    return ElevatedButton(
                        onPressed: () =>
                            _mainPageController.onFiltersPanelHideBtnPressed(),
                        child: const Text('Hide filters'));
                  }),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Form(
              child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Name:',
                    style: TextStyle(
                      color: Color(0xff8f96a3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _mainPageController.nameController,
                      onChanged: (value) => _mainPageController
                          .onCharacterNameFilterChangedAsync(value),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Species:',
                    style: TextStyle(
                      color: Color(0xff8f96a3),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: _mainPageController.speciesController,
                      onChanged: (value) => _mainPageController
                          .onCharacterSpeciesFilterChangedAsync(value),
                    ),
                  )
                ],
              ),
            ],
          )),
          Row(
            children: [
              const Text(
                'Status:',
                style: TextStyle(
                  color: Color(0xff8f96a3),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              Observer(builder: (_) {
                return Expanded(
                  child: DropdownButton<CharacterStatus?>(
                    hint: const Text('Status'),
                    value: _mainPageController.filterModel.characterStatus,
                    items: [
                      const DropdownMenuItem(value: null, child: Text('None')),
                      ...List<DropdownMenuItem<CharacterStatus?>>.generate(
                        CharacterStatus.values.length,
                        (int index) => DropdownMenuItem(
                          value: CharacterStatus.values[index],
                          child: Text(CharacterStatus.values[index].name),
                        ),
                      )
                    ],
                    onChanged: (CharacterStatus? status) => _mainPageController
                        .onCharacterStatusFilterChangedAsync(status),
                  ),
                );
              })
            ],
          ),
          Row(
            children: [
              const Text(
                'Gender:',
                style: TextStyle(
                  color: Color(0xff8f96a3),
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              Observer(builder: (_) {
                return Expanded(
                  child: DropdownButton<CharacterGender?>(
                    value: _mainPageController.filterModel.characterGender,
                    hint: const Text('Gender'),
                    items: [
                      const DropdownMenuItem(value: null, child: Text('None')),
                      ...List<DropdownMenuItem<CharacterGender?>>.generate(
                        CharacterGender.values.length,
                        (int index) => DropdownMenuItem(
                          value: CharacterGender.values[index],
                          child: Text(CharacterGender.values[index].name),
                        ),
                      )
                    ],
                    onChanged: (CharacterGender? gender) => _mainPageController
                        .onCharacterGenderFilterChangedAsync(gender),
                  ),
                );
              })
            ],
          ),
        ],
      ),
    );
  }
}
