import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mojofit/models/potion.dart';
import 'package:mojofit/states/globalState.dart';
import 'package:mojofit/widgets/decorations.dart';
import 'package:vector_graphics/vector_graphics.dart';

Widget BuyPotion(PotionType potype) {
  return GestureDetector(
      onTap: () {
        globalState.buyPotion(potype);
      },
      child: Badge(
          label: Observer(
              builder: (_) => Text(
                    globalState.user.potions[potype].toString(),
                  )),
          backgroundColor: Color(0xFF54B7AC),
          textStyle: TextStyle(fontSize: 30),
          largeSize: 35,
          // padding: EdgeInsets.all(10),
          child: Container(
              decoration: thirdMenu,
              padding: EdgeInsets.all(8),
              width: 140,
              height: 220,
              child: Column(
                children: [
                  Image.asset(potype.picture),
                  Text(potype.name),
                  Container(
                      width: 140,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            potype.cost.toString(),
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          SizedBox(
                              width: 19,
                              height: 19,
                              child: SvgPicture(const AssetBytesLoader(
                                  'assets/images/ui/money_active.svg.vec'))),
                        ],
                      ))
                ],
              ))));
}
