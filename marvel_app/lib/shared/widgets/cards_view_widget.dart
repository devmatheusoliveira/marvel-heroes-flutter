import 'package:flutter/material.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';

import 'card_tile_widget.dart';

class CardsViewWidget extends StatelessWidget {
  const CardsViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Heróis",
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
                CardTileWidget(
                  name: 'Homem Aranha',
                  alterEgo: 'Petter Parker',
                ),
                CardTileWidget(
                  name: 'Homem Aranha',
                  alterEgo: 'Petter Parker',
                ),
                CardTileWidget(
                  name: 'Homem Aranha',
                  alterEgo: 'Petter Parker',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
