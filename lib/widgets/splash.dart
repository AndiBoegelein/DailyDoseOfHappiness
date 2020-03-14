import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generatehappiness/main.dart';
import 'package:generatehappiness/widgets/animations.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            flex: 12,
            child: TransportAnimation(
              type: TransportAnimationType.dog_waving,
              fit: BoxFit.contain,
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
                  "Tap for dose of Happiness",
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
