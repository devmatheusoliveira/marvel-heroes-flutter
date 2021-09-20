import 'dart:convert';

class weightMetrics {
  final double? weight;
  final String? unity;
  weightMetrics({
    this.weight,
    this.unity,
  });

  weightMetrics copyWith({
    double? weight,
    String? unity,
  }) {
    return weightMetrics(
      weight: weight ?? this.weight,
      unity: unity ?? this.unity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'weight': weight,
      'unity': unity,
    };
  }

  factory weightMetrics.fromMap(Map<String, dynamic> map) {
    return weightMetrics(
      weight: map['weight'],
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory weightMetrics.fromJson(String source) =>
      weightMetrics.fromMap(json.decode(source));

  @override
  String toString() => 'weightMetrics(weight: $weight, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is weightMetrics &&
        other.weight == weight &&
        other.unity == unity;
  }

  @override
  int get hashCode => weight.hashCode ^ unity.hashCode;
}
