import 'package:exercise_project_ricky_and_morty/app/locator.dart';
import 'package:exercise_project_ricky_and_morty/models/characters_model.dart';
import 'package:exercise_project_ricky_and_morty/services/api_service.dart';
import 'package:flutter/material.dart';

class CharactersViewmodel extends ChangeNotifier {
  final _apiService = locator<ApiService>();

  CharactersModel? _charactersModel;
  CharactersModel? get charactersModel => _charactersModel;

  void getCharacters() async {
    _charactersModel = await _apiService.getAllCharacters();
    notifyListeners();
    print("geldi");
  }
}
