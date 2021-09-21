import 'package:flutter/material.dart';
import 'package:marvel_app/shared/models/caracteristics/person_caracteristics_model.dart';
import 'package:marvel_app/shared/widgets/caracteristic_bar/caracteristic_bar_controller.dart';

import '../caracteristic_wiget.dart';

class CaracteristicBarWidget extends StatelessWidget {
  final CaracteristicsModel caracteristic;
  const CaracteristicBarWidget({
    Key? key,
    required this.caracteristic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CaracteristicBarController controller = CaracteristicBarController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CaracteristicWidget(
          icone: "age",
          text: controller.convertBirthYearsOld(
            caracteristic.birth!,
          ), //pegar a data e converter em idade
        ),
        CaracteristicWidget(
          icone: "weight",
          text: "${caracteristic.weight!.value} kg",
        ),
        CaracteristicWidget(
          icone: "height",
          text: "${caracteristic.height!.value} m",
        ),
        CaracteristicWidget(
          icone: "universe",
          text: caracteristic.universe!,
        ),
      ],
    );
  }
}
