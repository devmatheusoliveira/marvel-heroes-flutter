import 'package:flutter/material.dart';
import 'package:marvel_app/modules/Character%20Page/character_page.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';

class CardTileWidget extends StatefulWidget {
  final String? name;
  final String? alterEgo;
  final String? imagePath;

  const CardTileWidget({
    Key? key,
    this.name,
    this.alterEgo,
    this.imagePath,
  }) : super(key: key);

  @override
  _CardTileWidgetState createState() => _CardTileWidgetState();
}

class _CardTileWidgetState extends State<CardTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CharacterPage()));
        },
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
                  image: AssetImage("assets/${widget.imagePath!}"),
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
            Container(
              alignment: Alignment.bottomLeft,
              width: 140,
              height: 230,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text.rich(
                  TextSpan(
                    text: '${widget.alterEgo}   \n',
                    style: TextStyles.cardSubtitle,
                    children: [
                      TextSpan(
                        text: widget.name,
                        style: TextStyles.cardTitle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
