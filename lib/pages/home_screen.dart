import 'package:flutter/material.dart';
import 'package:mojofit/models/potion.dart';
import 'package:mojofit/widgets/decorations.dart';
import 'package:mojofit/widgets/home_screen/buy_potion.dart';
import 'package:mojofit/widgets/home_screen/home_navigation_drawer.dart';
import 'package:mojofit/widgets/home_screen/onday_challange.dart';
import 'package:mojofit/widgets/home_screen/player_progress.dart';
import 'package:mojofit/widgets/home_screen/start_game_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgHome,
        drawer: mainNavigationDrawer(context),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          playerProgres(),
          SizedBox(
            height: 10,
          ),
          startGameButton(context),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12, left: 23, right: 23),
            width: MediaQuery.of(context).size.width - 42,
            decoration: secondMenu,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Ежедневные задания",
                style: TextStyle(fontSize: 20),
              ),
              ondaychallange("Зайти в игру", 20, 300),
              ondaychallange("Отжимания", 10, 500),
              ondaychallange("Зай pти в игру", 20, 300),
              Text(
                'Дней без перерывов: 0',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              )
            ]),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
              padding:
                  EdgeInsets.only(top: 16, left: 10, right: 10, bottom: 30),
              width: MediaQuery.of(context).size.width - 42,
              decoration: secondMenu,
              child: Center(
                  child: Column(children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Магазин",
                      style: TextStyle(fontSize: 30),
                    )),
                Wrap(spacing: 24, runSpacing: 12, children: [
                  BuyPotion(PotionType.minhealth),
                  BuyPotion(PotionType.midhealth),
                  BuyPotion(PotionType.highhealth),
                ])
              ])))
        ]))));
  }
}
