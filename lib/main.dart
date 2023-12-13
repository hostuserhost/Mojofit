import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mojofit/models/user_hive.dart';
import 'package:mojofit/pages/home_screen.dart';
import 'package:mojofit/states/globalState.dart';
import 'package:mojofit/widgets/decorations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mojofit/models/potion.dart';

List<CameraDescription> cameras = []; // Get cameras on phone
Future<void> main() async {
  // Start Initilize
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Hive.initFlutter();
  Hive.registerAdapter(UserHiveAdapter());
  Hive.registerAdapter(PotionTypeAdapter());
  await Hive.openBox<UserHive>('main');
  if (personal.get('main') == null) {
    personal.put(
        'main',
        UserHive(
            100,
            0,
            ObservableMap.of({
              PotionType.minhealth: 0,
              PotionType.midhealth: 0,
              PotionType.highhealth: 0
            })));
  }
  runApp(MaterialApp(
    theme: mainTheme,
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: HomeScreen()),
  ));
}
