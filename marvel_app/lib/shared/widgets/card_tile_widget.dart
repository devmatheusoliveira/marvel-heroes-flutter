import 'package:flutter/material.dart';

class CardTileWidget extends StatelessWidget {
  const CardTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.cover, //Lembrar de usar se não dá erro
          image: AssetImage("assets/chars/spider-man.png"),
        ),
      ),
    );
  }
}
