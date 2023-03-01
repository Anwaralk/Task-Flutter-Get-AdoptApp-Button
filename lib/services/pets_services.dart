import 'package:dio/dio.dart';

import '../models/pet.dart';

class DioClient {
  final _dio = Dio();
  final baseURL = 'https://coded-pets-api-crud.herokuapp.com/pets';

  Future getPets() async {
    final responseJSON = await _dio.get(baseURL) as List;

    var pets = responseJSON.map((pet) => Pet.fromJson(pet)).toList();
    return pets;
  }
}
