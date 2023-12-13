import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mojofit/VisionDetectorViews/pose_detector_view.dart';
import 'package:mojofit/states/globalState.dart';
import 'package:mojofit/widgets/game_overlays/select_move_overlay.dart';
import 'package:restart_app/restart_app.dart';

class RecognizePos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) =>
            IndexedStack(index: globalState.mojoGameOverlay, children: [
              selectMoveOverlay(),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Scaffold(
                              body: Column(children: [
                            Text(
                              "Встаньте в исходное положение, и сделайте отжимание/приседание если не засчиталось отойдите подальше",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Expanded(
                                child: globalState.enableDetection
                                    ? PoseDetectorViewVar
                                    : Container()),
                          ]))))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Observer(
                    builder: (_) => LinearProgressIndicator(
                      color: Colors.red,
                      backgroundColor: Colors.black,
                      minHeight: 100,
                      value: globalState.mojoXP,
                      semanticsLabel: 'Linear progress indicator',
                    ),
                  )),
              Scaffold(
                  body: Center(
                child: Column(children: [
                  Text(
                    "Конец вы победили",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Расскажите как вам игра и что хотелось бы добавить в телеграмм",
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      globalState.mojoGameOverlay = 0;
                      Restart.restartApp();
                    },
                    icon: Icon(Icons.restart_alt),
                    label: Text("Начать заново"),
                  )
                ]),
              ))
            ]));
  }
}
