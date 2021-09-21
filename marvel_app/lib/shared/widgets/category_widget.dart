import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/app_icons.dart';

class CategoryWidget extends StatelessWidget {
  final List<Color> backgroundGradient;
  final String imageAsset;

  const CategoryWidget(
      {Key? key, required this.backgroundGradient, required this.imageAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.amber,
            gradient: LinearGradient(
              colors: backgroundGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          child: SvgPicture.asset(
            imageAsset,
            alignment: Alignment.center,
            color: AppColors.primaryWhite,
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }
}
