import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Dose of Happiness',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Happiness(),
    );
  }
}

class HappinessState extends State<Happiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Dose of Happiness'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "I woof u ...",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: "Robot",
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
          _randomPuppy(),
          _randomCompliment(),
        ],
      )
    );
  }

  Widget _randomPuppy() {
    final List<Image> puppyImages = <Image>[];
    final Random random = Random();
    
    puppyImages.add(Image.asset("assets/images/puppy1.jpg"));
    puppyImages.add(Image.asset("assets/images/puppy2.jpg"));
    puppyImages.add(Image.asset("assets/images/puppy3.jpg"));

    final nextInt = random.nextInt(puppyImages.length);

    return puppyImages[nextInt];
  }

  Widget _randomCompliment() {
    final List<String> compliments = <String>[];
    final Random random = Random();

    compliments.add("... because you are awesome!");
    compliments.add("... for your happy nature!");
    compliments.add("... for your intellect!");
    compliments.add("... because i can laugh with you!");
    compliments.add("... for the way you move!");
    compliments.add("... for the nice way you treat everyone you meet!");
    compliments.add("... for your professional ambition!");
    compliments.add("... for of your communication skills!");


    final nextInt = random.nextInt(compliments.length);

    return Text(
      compliments[nextInt],
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: "Robot",
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );
  }
}


class Happiness extends StatefulWidget {
  @override
  HappinessState createState() => HappinessState();
}


