import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quetes_application/view/hom_screen.dart';
import 'package:quetes_application/view/splashScreen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const QutesApp());
}
class QutesApp extends StatelessWidget {
  const QutesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
