import 'dart:convert';

class AbilitiesModel {
  final int? force;
  final int? inteligence;
  final int? agility;
  final int? endurance;
  final int? velocity;

  AbilitiesModel({
    this.force,
    this.inteligence,
    this.agility,
    this.endurance,
    this.velocity,
  });

  AbilitiesModel copyWith({
    int? force,
    int? inteligence,
    int? agility,
    int? endurance,
    int? velocity,
  }) {
    return AbilitiesModel(
      force: force ?? this.force,
      inteligence: inteligence ?? this.inteligence,
      agility: agility ?? this.agility,
      endurance: endurance ?? this.endurance,
      velocity: velocity ?? this.velocity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'force': force,
      'inteligence': inteligence,
      'agility': agility,
      'endurance': endurance,
      'velocity': velocity,
    };
  }

  factory AbilitiesModel.fromMap(Map<String, dynamic> map) {
    return AbilitiesModel(
      force: map['force'],
      inteligence: map['inteligence'],
      agility: map['agility'],
      endurance: map['endurance'],
      velocity: map['velocity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AbilitiesModel.fromJson(String source) =>
      AbilitiesModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AbilitiesModel(force: $force, inteligence: $inteligence, agility: $agility, endurance: $endurance, velocity: $velocity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AbilitiesModel &&
        other.force == force &&
        other.inteligence == inteligence &&
        other.agility == agility &&
        other.endurance == endurance &&
        other.velocity == velocity;
  }

  @override
  int get hashCode {
    return force.hashCode ^
        inteligence.hashCode ^
        agility.hashCode ^
        endurance.hashCode ^
        velocity.hashCode;
  }
}
