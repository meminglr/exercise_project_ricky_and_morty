import 'package:exercise_project_ricky_and_morty/views/screens/characters_view/characters_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/character_card_view.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({super.key});

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  @override
  void initState() {
    context.read<CharactersViewmodel>().getCharacters();
    super.initState();
  }

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
              Consumer<CharactersViewmodel>(
                builder: (context, viewModel, child) {
                  if (viewModel.charactersModel == null) {
                    return CircularProgressIndicator();
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: viewModel.charactersModel!.characters.length,
                        itemBuilder: (context, index) {
                          final character =
                              viewModel.charactersModel!.characters[index];
                          return CharacterCardView(characterModel: character);
                        },
                      ),
                    );
                  }
                },
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
