import 'package:flutter/material.dart';

import '../../widgets/character_card_view.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              _searchInputWidget(),
              SizedBox(height: 10),
              CharacterCardView(
                imageUrl:
                    "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                name: "Rick Sanchez",
                origin: "Earth (C-137)",
                status: "Alive",
                type: "Human",
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField _searchInputWidget() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: "Karakterlerde Ara",
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ),
    );
  }
}
