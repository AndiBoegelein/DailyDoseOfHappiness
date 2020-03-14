import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generatehappiness/main.dart';

class SplashScreen extends StatelessWidget {

  static const _animationNameWaveSlow = "waveSlow";
  static const _animationNameWaveFast = "waveFast";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            flex: 12,
            child: FlareActor(
              "assets/flare/dog_waving.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: _animationNameWaveFast,
            //child: TransportAnimation(
            //  type: randomTransportAnimationType(),
            //  fit: BoxFit.contain,
            ),
          ),
          Flexible(
              flex: 2,
              child: RaisedButton(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Tap me!",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Robot",
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Happiness()),
                  );
                },
              )),
        ],
      ),
    );
  }
}
