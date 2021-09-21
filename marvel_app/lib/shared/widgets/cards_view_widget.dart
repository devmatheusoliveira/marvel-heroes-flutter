import 'package:flutter/material.dart';
import 'package:marvel_app/modules/Home/home_page_controller.dart';
import 'package:marvel_app/shared/models/person_model.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';
import 'card_tile_widget.dart';

class CardsViewWidget extends StatefulWidget {
  final String categoryName;
  final List<PersonModel> personagem;

  const CardsViewWidget({
    Key? key,
    required this.categoryName,
    required this.personagem,
  }) : super(key: key);

  @override
  _CardsViewWidgetState createState() => _CardsViewWidgetState();
}

class _CardsViewWidgetState extends State<CardsViewWidget> {
  HomePageController controller = HomePageController();

  @override
  Widget build(BuildContext context) {
    controller.getCharacter();
    setState(() {});

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.categoryName,
                style: TextStyles.sectionTitle,
              ),
              InkWell(
                child: Text("Ver tudo", style: TextStyles.description),
                onTap: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 40),
            child: Row(
              children: [
                CardTileWidget(
                  name: widget.personagem[0].name,
                  alterEgo: widget.personagem[0].alterEgo,
                  imagePath: widget.personagem[0].imagePath,
                ),
                CardTileWidget(
                  name: widget.personagem[1].name,
                  alterEgo: widget.personagem[1].alterEgo,
                  imagePath: widget.personagem[1].imagePath,
                ),
                CardTileWidget(
                  name: widget.personagem[2].name,
                  alterEgo: widget.personagem[2].alterEgo,
                  imagePath: widget.personagem[2].imagePath,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/*

class CardsViewWidget extends StatefulWidget {
  final String categoryName;
  final List<PersonModel>? personagem;

  const CardsViewWidget({
    Key? key,
    required this.categoryName,
    this.personagem,
  }) : super(key: key);

  @override
  _CardsViewWidgetState createState() => _CardsViewWidgetState();
}

class _CardsViewWidgetState extends State<CardsViewWidget> {


  @override
  Widget build(BuildContext context) {
    CardViewController controller = CardViewController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.categoryName,
                style: TextStyles.sectionTitle,
              ),
              InkWell(
                child: Text("Ver tudo", style: TextStyles.description),
                onTap: () {
                  print("Ver mais!");
                },
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 16.0, left: 16.0, right: 16.0, bottom: 40),
            child: Row(
              children: [
                ValueListenableBuilder<List<PersonModel>>(
                  valueListenable: categor,
                  builder: (_, character, __) => Row(
                    children: character
                        .map(
                          (e) => CardTileWidget(
                            name: e.name!,
                            alterEgo: e.alterEgo!,
                            imagePath: e.imagePath!,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
*/