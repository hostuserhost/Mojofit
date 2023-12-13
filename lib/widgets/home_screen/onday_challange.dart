import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

Widget ondayIndicator = Container(
  width: 23,
  height: 23,
  decoration: BoxDecoration(
      border: Border.all(color: Color(0xFF46C626), width: 3),
      borderRadius: BorderRadius.all(Radius.circular(26))),
);

Widget ondaychallange(String ondaychallange, int money, int xp) {
  return Row(
    children: [
      ondayIndicator,
      SizedBox(
        width: 4,
      ),
      Text(
        ondaychallange,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
      Spacer(
        flex: 9,
      ),
      Text(money.toString()),
      SizedBox(
        width: 1,
      ),
      SizedBox(
          width: 19,
          height: 19,
          child: SvgPicture(
              const AssetBytesLoader('assets/images/ui/money_active.svg.vec'))),
      Text(xp.toString()),
      SizedBox(width: 11),
      Text("XP"),
    ],
  );
}
