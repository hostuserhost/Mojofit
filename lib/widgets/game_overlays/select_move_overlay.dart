import 'package:flutter/material.dart';
import 'package:mojofit/models/exersise.dart';
import 'package:mojofit/states/globalState.dart';
import 'package:mojofit/widgets/decorations.dart';

int selectedMove = 0;
Widget selectMoveOverlay() {
  return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: double.infinity,
          height: 230,
          decoration: secondMenu.copyWith(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          padding: EdgeInsets.all(10),
          child: Scaffold(
              backgroundColor: secondMenuColor,
              body: Wrap(
                spacing: 79,
                runSpacing: 20,
                children: [
                  moveWidget(ExersiseType.pushups),
                  moveWidget(ExersiseType.squats),
                  moveWidget(ExersiseType.abdomialcrunch),
                  moveWidget(ExersiseType.slopes),
                ],
              ))));
}

Widget moveWidget(ExersiseType exer) {
  return GestureDetector(
      onTap: () {
        switch (exer.id) {
          case 0:
            selectedMove = 1;
          case 1:
            selectedMove = 2;
          case 2:
            selectedMove = 3;
          case 3:
            selectedMove = 4;
        }
        globalState.mojoGameOverlay = 1;
      },
      child: Column(
        children: [
          Badge(
              label: Text(exer.hit.toString()),
              child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(exer.picture))),
          Text(exer.name)
        ],
      ));
}
