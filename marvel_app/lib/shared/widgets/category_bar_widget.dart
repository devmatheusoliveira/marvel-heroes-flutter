import 'package:flutter/cupertino.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/app_icons.dart';

import 'category_widget.dart';

class CategoryBarWidget extends StatelessWidget {
  const CategoryBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 48,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryWidget(
            backgroundGradient: AppColors.gradienteBlue,
            imageAsset: AppIcons.hero,
          ),
          CategoryWidget(
            backgroundGradient: AppColors.gradienteRed,
            imageAsset: AppIcons.villain,
          ),
          CategoryWidget(
            backgroundGradient: AppColors.gradientePurple,
            imageAsset: AppIcons.antihero,
          ),
          CategoryWidget(
            backgroundGradient: AppColors.gradienteGreen,
            imageAsset: AppIcons.alien,
          ),
          CategoryWidget(
            backgroundGradient: AppColors.gradientePink,
            imageAsset: AppIcons.human,
          ),
        ],
      ),
    );
  }
}
