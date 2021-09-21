import 'package:flutter/material.dart';
import 'package:marvel_app/shared/models/caracteristics/caracteristics_metrics_model.dart';
import 'package:marvel_app/shared/models/caracteristics/heigth_metric_model.dart';
import 'package:marvel_app/shared/models/caracteristics/person_caracteristics_model.dart';
import 'package:marvel_app/shared/widgets/abilities_bar.dart';
import 'package:marvel_app/shared/widgets/caracteristic_bar/caracteristic_bar_controller.dart';
import 'package:marvel_app/shared/themes/app_colors.dart';
import 'package:marvel_app/shared/themes/text_styles.dart';
import 'package:marvel_app/shared/widgets/caracteristic_bar/caracteristic_bar_widget.dart';
import 'package:marvel_app/shared/widgets/caracteristic_wiget.dart';

class CharacterPage extends StatelessWidget {
  final String? name;
  final String? alterEgo;
  final String? description;

  const CharacterPage({
    Key? key,
    this.name,
    this.alterEgo,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/chars/deadpool.png",
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: AppColors.gradienteBlack,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: MediaQuery.of(context).size.height / 2,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wade Wilson",
                          style: TextStyles.profileSubtitle,
                        ),
                        Text(
                          "Deadpool",
                          style: TextStyles.profileTitle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: CaracteristicBarWidget(
                            caracteristic: CaracteristicsModel(
                              birth: "1991",
                              weight: weightMetric(unity: "", value: 95),
                              height: heigthMetric(unity: "", value: 1.88),
                              universe: "Terra 616",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            "O jovem Wade saiu do controle quando sua mãe morreu de câncer quando ele tinha 6 anos de idade, tornando-o um garoto solitário e atormentado, sem nenhuma explicação. Seu pai – que era um bêbado do exército – o espancava e o tratava mal. Assim, com uma vida desestruturada, Wade tornou-se um delinquente na adolescência. Um dia chegou a agredir friamente seu pai com uma garrafa mostrando alguns traços de insanidade, matando-o no processo. Depois disso, Wade iniciou sua carreira de mercenário. Ele aceitava assassinar apenas aqueles merecedores da morte.",
                            style: TextStyles.description,
                          ),
                        ),
                        AbilitiesBarWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
            )
          ],
        ),
      ),
    );
  }
}
