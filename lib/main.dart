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
        brightness: Brightness.light,
        primaryColor: Colors.black,
      ),
      darkTheme: ThemeData.dark(),
      home: Happiness(),
    );
  }
}

class HappinessState extends State<Happiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daily Dose of Happiness'),
      ),

      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "I woof u ...",
            style: TextStyle(
              color: Colors.white,
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
        color: Colors.white,
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


