import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';
import 'package:marvel_app/shared/widgets/card_tile_widget.dart';
import 'package:marvel_app/shared/widgets/cards_view_widget.dart';
import 'package:marvel_app/shared/widgets/category_bar_widget.dart';

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
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text.rich(
                  TextSpan(
                    text: "Bem vindo ao Marvel Heroes \n",
                    style: TextStyles.profileSubtitle,
                    children: [
                      TextSpan(
                        text: "Escolha o seu \npersonagem",
                        style: TextStyles.profileTitle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CategoryBarWidget(),
            CardsViewWidget(),
            CardsViewWidget(),
            CardsViewWidget(),
          ],
        ),
      ),
    );
  }
}
