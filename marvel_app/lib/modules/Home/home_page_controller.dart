import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_app/shared/models/categorys_model.dart';
import 'package:marvel_app/shared/models/person_model.dart';

class HomePageController {
  List<int> boraVer = [1, 2, 3];
  ValueNotifier<CategoryModel> teste = ValueNotifier(CategoryModel());

  Future<String> getJson() {
    return rootBundle.loadString('assets/application.json');
  }

  Future<CategoryModel> imprime() async {
    var my_data = json.decode(await getJson());
    return CategoryModel.fromMap(my_data);
  }

  Future<void> getCharacter() async {
    teste = ValueNotifier(await imprime());
  }
}
