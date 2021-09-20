import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:marvel_app/shared/models/abilities_model.dart';
import 'package:marvel_app/shared/models/caracteristics/person_caracteristics_model.dart';

class PersonModel {
  final String? name;
  final String? alterEgo;
  final String? imagePath;
  final String? biography;
  final CaracteristicsModel? caracteristics;
  final AbilitiesModel? abilities;
  final List<String>? movies;

  PersonModel({
    this.name,
    this.alterEgo,
    this.imagePath,
    this.biography,
    this.caracteristics,
    this.abilities,
    this.movies,
  });

  PersonModel copyWith({
    String? name,
    String? alterEgo,
    String? imagePath,
    String? biography,
    CaracteristicsModel? caracteristics,
    AbilitiesModel? abilities,
    List<String>? movies,
  }) {
    return PersonModel(
      name: name ?? this.name,
      alterEgo: alterEgo ?? this.alterEgo,
      imagePath: imagePath ?? this.imagePath,
      biography: biography ?? this.biography,
      caracteristics: caracteristics ?? this.caracteristics,
      abilities: abilities ?? this.abilities,
      movies: movies ?? this.movies,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'alterEgo': alterEgo,
      'imagePath': imagePath,
      'biography': biography,
      'caracteristics': caracteristics?.toMap(),
      'abilities': abilities?.toMap(),
      'movies': movies,
    };
  }

  factory PersonModel.fromMap(Map<String, dynamic> map) {
    return PersonModel(
      name: map['name'],
      alterEgo: map['alterEgo'],
      imagePath: map['imagePath'],
      biography: map['biography'],
      caracteristics: CaracteristicsModel.fromMap(map['caracteristics']),
      abilities: AbilitiesModel.fromMap(map['abilities']),
      movies: List<String>.from(map['movies']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonModel.fromJson(String source) =>
      PersonModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PersonModel(name: $name, alterEgo: $alterEgo, imagePath: $imagePath, biography: $biography, caracteristics: $caracteristics, abilities: $abilities, movies: $movies)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PersonModel &&
        other.name == name &&
        other.alterEgo == alterEgo &&
        other.imagePath == imagePath &&
        other.biography == biography &&
        other.caracteristics == caracteristics &&
        other.abilities == abilities &&
        listEquals(other.movies, movies);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        alterEgo.hashCode ^
        imagePath.hashCode ^
        biography.hashCode ^
        caracteristics.hashCode ^
        abilities.hashCode ^
        movies.hashCode;
  }
}
