import 'package:flutter/material.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/app_icons.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';
import 'package:marvel_app/shared/widgets/card_tile_widget.dart';
import 'package:marvel_app/shared/widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        actions: [],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 35,
              ),
            ),
            Image.asset("assets/logo.png"),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                child: Text.rich(
                  TextSpan(
                    text: "Bem vindo ao Marvel Heroes \n",
                    style: TextStyles.profileSubtitle,
                    children: [
                      TextSpan(
                          text: "Escolha o seu personagem",
                          style: TextStyles.profileTitle)
                    ],
                  ),
                ),
              ),
              Container(height: 30),
              Row(
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
              CardTileWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
