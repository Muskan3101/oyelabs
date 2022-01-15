import 'dart:async';

import 'package:flutter/material.dart';

import 'screens/signup_screen.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 3,
      ),(){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SignUpScreen()));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset("assets/images/logo.png"),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 30,left: 120,right: 120),
        child: Image.asset("assets/images/powered_by.png"),
      ),
    );
  }
}

