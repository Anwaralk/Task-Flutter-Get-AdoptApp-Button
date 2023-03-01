import 'package:adopt_app/models/pet.dart';
import 'package:flutter/material.dart';

import '../services/pets_services.dart';

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [
    Pet(
        name: "Lucifurr",
        image: "https://i.ibb.co/P6VJ4pZ/smile-cat-1.png",
        age: 2,
        gender: "male")
  ];

  void getPets() async {
    pets = await DioClient().getPets();
    notifyListeners();
  }
}
