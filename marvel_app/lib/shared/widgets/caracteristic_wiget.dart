import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';

class CaracteristicWidget extends StatelessWidget {
  final String icone;
  final String text;
  const CaracteristicWidget({
    Key? key,
    required this.icone,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/icons/$icone.svg",
            color: AppColors.primaryWhite,
            height: 24,
            width: 24,
          ),
          Container(
            height: 12,
          ),
          Text(
            text,
            style: TextStyles.caracteristic,
          ),
        ],
      ),
    );
  }
}
