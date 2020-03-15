import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generatehappiness/main.dart';

class SplashScreen extends StatelessWidget {
  static const _animationNameWaveSlow = 'waveSlow';
  static const _animationNameWaveFast = 'waveFast';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Daily Dose of Happiness',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontFamily: 'Oswald',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.orange[700],
        ),
        backgroundColor: Colors.black,
        body:  FlareActor(
            'assets/flare/dog_waving.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _animationNameWaveFast,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange[700],
          child: Icon(Icons.arrow_forward),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Happiness()),
            );
          },
        )
    );
  }
}
