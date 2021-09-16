import 'dart:convert';

class CaracteristicMetric {
  final double? value;
  final String? unity;
  CaracteristicMetric({
    this.value,
    this.unity,
  });

  CaracteristicMetric copyWith({
    double? value,
    String? unity,
  }) {
    return CaracteristicMetric(
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

  factory CaracteristicMetric.fromMap(Map<String, dynamic> map) {
    return CaracteristicMetric(
      value: map['value'],
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CaracteristicMetric.fromJson(String source) =>
      CaracteristicMetric.fromMap(json.decode(source));

  @override
  String toString() => 'CaracteristicMetric(value: $value, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CaracteristicMetric &&
        other.value == value &&
        other.unity == unity;
  }

  @override
  int get hashCode => value.hashCode ^ unity.hashCode;
}
