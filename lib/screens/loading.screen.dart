import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_scale_indicator.dart';
import 'package:loading/loading.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Loading(
          indicator: BallScaleIndicator(),
          size: 100.0,
        ),
      ),
    );
  }
}
