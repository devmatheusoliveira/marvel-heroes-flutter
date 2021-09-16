import 'package:flutter/material.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';

class CardTileWidget extends StatelessWidget {
  const CardTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 140,
            height: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover, //Lembrar de usar se não dá erro
                image: AssetImage("assets/chars/spider-man.png"),
              ),
            ),
          ),
          Container(
            width: 140,
            height: 230,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: AppColors.gradienteBlack,
                    begin: Alignment.center,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(15)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              width: 140,
              height: 220,
              child: Text.rich(
                TextSpan(
                  text: 'Petter Parker\n',
                  style: TextStyles.cardSubtitle,
                  children: [
                    TextSpan(
                      text: 'Homem Aranha',
                      style: TextStyles.cardTitle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
