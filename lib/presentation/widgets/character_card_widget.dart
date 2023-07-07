import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/controllers/main_page_controller.dart';

import '../../data/models/character_model.dart';
import '../../injection.dart';

class CharacterCardWidget extends StatelessWidget {
  final CharacterModel characterModel;
  const CharacterCardWidget({
    super.key,
    required this.characterModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          getIt<MainPageController>().onCharacterCardTapped(characterModel),
      child: Stack(
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: const Color(0x00dee3ed),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ImageWidget(character: characterModel),
                _CharacterDescriptionWidget(characterModel: characterModel),
              ],
            ),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: Icon(
              characterModel.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_outline_rounded,
              color: Colors.red,
              size: 32,
            ),
          )
        ],
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  final CharacterModel character;
  const _ImageWidget({required this.character});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: CachedNetworkImage(
        imageUrl: character.image,
        fit: BoxFit.fill,
        progressIndicatorBuilder: (context, url, progress) =>
            const Center(child: CircularProgressIndicator()),
        errorWidget: (_, __, ___) =>
            Image.asset('assets/images/no_image_available.png'),
      ),
    );
  }
}

class _CharacterDescriptionWidget extends StatelessWidget {
  final CharacterModel characterModel;
  const _CharacterDescriptionWidget({required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            characterModel.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            '${characterModel.status.name} - ${characterModel.gender.name} - ${characterModel.species}${characterModel.type.isEmpty ? '' : ' - ${characterModel.type}'}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Last known location:',
            style: TextStyle(
              color: Color(0xff8f96a3),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            characterModel.location.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
