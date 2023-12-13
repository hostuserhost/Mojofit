import 'package:flutter/material.dart';
import 'package:mojofit/pages/game_screen.dart';

Widget startGameButton(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const GameScreen(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 42,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xFF3D8E99),
            border: Border.all(
              color: Color(0xFF3D8E99),
            ),
            borderRadius: BorderRadius.all(Radius.circular(26))),
        child: Row(children: [
          SizedBox(
            width: 23,
          ),
          Text(
            'Начать забег',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
          Spacer()
        ]),
      ));
}
