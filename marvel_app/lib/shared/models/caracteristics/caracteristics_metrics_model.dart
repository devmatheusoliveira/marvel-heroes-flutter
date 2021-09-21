import 'dart:convert';

class weightMetric {
  final int? value;
  final String? unity;

  weightMetric({
    this.value,
    this.unity,
  });

  weightMetric copyWith({
    int? value,
    String? unity,
  }) {
    return weightMetric(
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

  factory weightMetric.fromMap(Map<String, dynamic> map) {
    return weightMetric(
      value: map['value'],
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory weightMetric.fromJson(String source) =>
      weightMetric.fromMap(json.decode(source));

  @override
  String toString() => 'weightMetric(value: $value, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is weightMetric &&
        other.value == value &&
        other.unity == unity;
  }

  @override
  int get hashCode => value.hashCode ^ unity.hashCode;
}
