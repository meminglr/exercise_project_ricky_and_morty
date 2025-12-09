import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:exercise_project_ricky_and_morty/models/character_model';

class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));

  Future<CharacterModel> getAllCharacters() async {
    try {
      final response = await _dio.get("/charater");
      return CharacterModel.fromJson(response.data);
    } on Exception catch (e) {
      log("Error: $e");
      rethrow;
    }
  }
}
