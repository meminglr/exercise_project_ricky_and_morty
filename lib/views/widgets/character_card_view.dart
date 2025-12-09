import 'package:flutter/material.dart';

import '../../models/characters_model.dart';

class CharacterCardView extends StatelessWidget {
  final CharacterModel characterModel;

  const CharacterCardView({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Card.filled(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 4,
                child: _characterImageWidget(characterModel.image),
              ),
              Flexible(
                flex: 6,
                child: _characterInfoWidget(
                  characterModel.name,
                  characterModel.origin.name,
                  characterModel.status,
                  characterModel.species,
                ),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_add_outlined)),
      ],
    );
  }

  Padding _characterInfoWidget(
    String name,
    String origin,
    String status,
    String type,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("İsim", style: TextStyle(fontWeight: FontWeight.w300)),

          Text(name),
          SizedBox(height: 10),
          Text("Köken", style: TextStyle(fontWeight: FontWeight.w300)),
          Text(origin),
          SizedBox(height: 10),
          Text("Durum", style: TextStyle(fontWeight: FontWeight.w300)),
          Text("$status - $type"),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Padding _characterImageWidget(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),

        child: Image.network(imageUrl),
      ),
    );
  }
}
