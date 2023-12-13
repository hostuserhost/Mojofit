import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mojofit/states/globalState.dart';
import 'package:mojofit/widgets/decorations.dart';

Widget playerProgres() {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.green, Colors.blue])),
    height: 200,
    child: Row(
      children: [
        Align(
            alignment: Alignment(0, -0.8),
            child: Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                  size: 30,
                ),
              );
            })),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
              height: 180, child: Image.asset('assets/images/mojo.png')),
        ),
        Spacer(),
        Observer(
            builder: (_) => SizedBox(
                width: 130,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ранг: " +
                          globalState.user.xp.value.toString().substring(0, 1),
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    LinearProgressIndicator(
                        backgroundColor: Color(0xFFD9D9D9),
                        color: Color(0xFF54B7AC),
                        value: double.parse(
                          globalState.user.xp.value.toStringAsFixed(1),
                        )),
                    SizedBox(
                      height: 17,
                    )
                  ],
                ))),
        Align(
            alignment: AlignmentDirectional(Alignment.centerRight.x, -0.8),
            child: Container(
              width: 65,
              height: 45,
              decoration: BoxDecoration(
                  color: bgHome,
                  border: Border.all(
                    color: bgHome,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              child: Row(children: [
                Spacer(),
                SizedBox(
                    width: 30,
                    height: 30,
                    child: SvgPicture(const AssetBytesLoader(
                        'assets/images/ui/money_active.svg.vec'))),
                Observer(
                    builder: (_) =>
                        Text(globalState.user.money.value.toString())),
                Spacer()
              ]),
            )),
      ],
    ),
  );
}
