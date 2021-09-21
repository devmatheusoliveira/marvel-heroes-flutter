import 'dart:convert';

import 'package:marvel_app/shared/models/caracteristics/caracteristics_metrics_model.dart';
import 'package:marvel_app/shared/models/caracteristics/heigth_metric_model.dart';

class CaracteristicsModel {
  final String? birth;
  final weightMetric? weight;
  final heigthMetric? height;
  final String? universe;

  CaracteristicsModel({
    this.birth,
    this.weight,
    this.height,
    this.universe,
  });

  CaracteristicsModel copyWith({
    String? birth,
    weightMetric? weight,
    heigthMetric? height,
    String? universe,
  }) {
    return CaracteristicsModel(
      birth: birth ?? this.birth,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      universe: universe ?? this.universe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'birth': birth,
      'weight': weight?.toMap(),
      'height': height?.toMap(),
      'universe': universe,
    };
  }

  factory CaracteristicsModel.fromMap(Map<String, dynamic> map) {
    return CaracteristicsModel(
      birth: map['birth'],
      weight: weightMetric.fromMap(map['weight']),
      height: heigthMetric.fromMap(map['height']),
      universe: map['universe'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CaracteristicsModel.fromJson(String source) =>
      CaracteristicsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CaracteristicsModel(birth: $birth, weight: $weight, height: $height, universe: $universe)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CaracteristicsModel &&
        other.birth == birth &&
        other.weight == weight &&
        other.height == height &&
        other.universe == universe;
  }

  @override
  int get hashCode {
    return birth.hashCode ^
        weight.hashCode ^
        height.hashCode ^
        universe.hashCode;
  }
}
