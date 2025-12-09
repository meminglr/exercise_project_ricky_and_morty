import 'dart:developer';

import 'package:dio/dio.dart';

import '../models/characters_model.dart';
class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: "https://rickandmortyapi.com/api"));

  Future<CharactersModel> getAllCharacters() async {
    try {
      final response = await _dio.get("/character");
      return CharactersModel.fromJson(response.data);
    } on Exception catch (e) {
      log("Error: $e");
      rethrow;
    }
  }
}
