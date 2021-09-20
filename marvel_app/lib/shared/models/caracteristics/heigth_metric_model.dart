import 'dart:convert';

class heigthMetric {
  final double? heigth;
  final String? unity;
  heigthMetric({
    this.heigth,
    this.unity,
  });

  heigthMetric copyWith({
    double? heigth,
    String? unity,
  }) {
    return heigthMetric(
      heigth: heigth ?? this.heigth,
      unity: unity ?? this.unity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'heigth': heigth,
      'unity': unity,
    };
  }

  factory heigthMetric.fromMap(Map<String, dynamic> map) {
    return heigthMetric(
      heigth: map['heigth'],
      unity: map['unity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory heigthMetric.fromJson(String source) =>
      heigthMetric.fromMap(json.decode(source));

  @override
  String toString() => 'heigthMetric(heigth: $heigth, unity: $unity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is heigthMetric &&
        other.heigth == heigth &&
        other.unity == unity;
  }

  @override
  int get hashCode => heigth.hashCode ^ unity.hashCode;
}
