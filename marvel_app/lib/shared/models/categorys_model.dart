import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:marvel_app/shared/models/person_model.dart';

class CategoryModel {
  final List<PersonModel>? heroes;
  final List<PersonModel>? villains;
  final List<PersonModel>? antiHeroes;
  final List<PersonModel>? aliens;
  final List<PersonModel>? humans;

  CategoryModel({
    this.heroes,
    this.villains,
    this.antiHeroes,
    this.aliens,
    this.humans,
  });

  CategoryModel copyWith({
    List<PersonModel>? heroes,
    List<PersonModel>? villains,
    List<PersonModel>? antiHeroes,
    List<PersonModel>? aliens,
    List<PersonModel>? humans,
  }) {
    return CategoryModel(
      heroes: heroes ?? this.heroes,
      villains: villains ?? this.villains,
      antiHeroes: antiHeroes ?? this.antiHeroes,
      aliens: aliens ?? this.aliens,
      humans: humans ?? this.humans,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'heroes': heroes?.map((x) => x.toMap()).toList(),
      'villains': villains?.map((x) => x.toMap()).toList(),
      'antiHeroes': antiHeroes?.map((x) => x.toMap()).toList(),
      'aliens': aliens?.map((x) => x.toMap()).toList(),
      'humans': humans?.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      heroes: List<PersonModel>.from(
          map['heroes']?.map((x) => PersonModel.fromMap(x))),
      villains: List<PersonModel>.from(
          map['villains']?.map((x) => PersonModel.fromMap(x))),
      antiHeroes: List<PersonModel>.from(
          map['antiHeroes']?.map((x) => PersonModel.fromMap(x))),
      aliens: List<PersonModel>.from(
          map['aliens']?.map((x) => PersonModel.fromMap(x))),
      humans: List<PersonModel>.from(
          map['humans']?.map((x) => PersonModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryModel(heroes: $heroes, villains: $villains, antiHeroes: $antiHeroes, aliens: $aliens, humans: $humans)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is CategoryModel &&
        listEquals(other.heroes, heroes) &&
        listEquals(other.villains, villains) &&
        listEquals(other.antiHeroes, antiHeroes) &&
        listEquals(other.aliens, aliens) &&
        listEquals(other.humans, humans);
  }

  @override
  int get hashCode {
    return heroes.hashCode ^
        villains.hashCode ^
        antiHeroes.hashCode ^
        aliens.hashCode ^
        humans.hashCode;
  }
}
