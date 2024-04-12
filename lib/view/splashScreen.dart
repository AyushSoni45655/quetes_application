import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:quetes_application/view/hom_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5),() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102E6E),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/quotes.jpg'),
              ),
              SizedBox(height: 40,),
              DefaultTextStyle(
                style:  TextStyle(
                  color: Colors.green.shade700,
                  fontSize: 17,
                  letterSpacing: 5,

                  fontWeight: FontWeight.bold
                ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('Quotes Application')
                ],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
