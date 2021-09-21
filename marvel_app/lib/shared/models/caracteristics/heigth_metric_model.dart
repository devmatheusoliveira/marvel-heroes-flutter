import 'dart:convert';

class heigthMetric {
  final double? value;
  final String? unity;

  heigthMetric({
    this.value,
    this.unity,
  });

  heigthMetric copyWith({
    double? value,
    String? unity,
  }) {
    return heigthMetric(
      value: value ?? this.value,
      unity: unity ?? this.unity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'unity': unity,
    };
  }

  factory heigthMetric.fromMap(Map<String, dynamic> map) {
    return heigthMetric(
      value: map['value'],
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory heigthMetric.fromJson(String source) =>
      heigthMetric.fromMap(json.decode(source));

  @override
  String toString() => 'heigthMetric(value: $value, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is heigthMetric &&
        other.value == value &&
        other.unity == unity;
  }

  @override
  int get hashCode => value.hashCode ^ unity.hashCode;
}
