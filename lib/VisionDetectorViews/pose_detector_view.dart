import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:mojofit/states/globalState.dart';

import 'camera_view.dart';

final PoseDetectorViewVar = PoseDetectorView(
  useClassifier: true,
  isActivity: true,
);

class PoseDetectorView extends StatefulWidget {
  final bool useClassifier;
  final bool isActivity;

  const PoseDetectorView({
    required this.useClassifier,
    this.isActivity = false,
  });

  @override
  State<StatefulWidget> createState() => _PoseDetectorViewState();
}

class _PoseDetectorViewState extends State<PoseDetectorView> {
  PoseDetector poseDetector = GoogleMlKit.vision.poseDetector();
  bool isBusy = false;
  CustomPaint? customPaint;
  double poseAccuracy = 0.0;
  int poseReps = 0;

  @override
  void dispose() async {
    super.dispose();
    await poseDetector.close();
  }

  @override
  Widget build(BuildContext context) {
    return CameraView(
      customPaint: null,
      onImage: (inputImage) {
        processImage(
          inputImage,
          widget.useClassifier,
          widget.isActivity,
        );
      },
    );
  }

  Future<void> processImage(
    InputImage inputImage,
    bool useClassifier,
    bool isActivity,
  ) async {
    if (isBusy) return;
    isBusy = true;
    final poses = await poseDetector.processImage(
      inputImage: inputImage,
      useClassifier: widget.useClassifier,
      isActivity: isActivity,
    );
    poses.forEach((pose) {
      globalState.exerChange(pose.name);
    });

    isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }
}
