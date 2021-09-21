import 'package:flutter/material.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';

class AbilitiesBarWidget extends StatelessWidget {
  const AbilitiesBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> barrinhas = [
      Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Container(
          color: AppColors.primaryWhite,
          width: 2,
          height: 8,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Container(
          color: AppColors.primaryWhite,
          width: 2,
          height: 12,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 4.0),
        child: Container(
          color: AppColors.primaryDark,
          width: 2,
          height: 8,
        ),
      ),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Força",
          style: TextStyles.caracteristic,
        ),
      ],
    );
  }
}
