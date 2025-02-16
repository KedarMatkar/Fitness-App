import 'dart:async';

import 'package:fitness_app/homepage.dart';
import 'package:fitness_app/pages/auth_page.dart';
import 'package:fitness_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context) => AuthPage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/girl-fitness2.jpg', fit: BoxFit.cover, color: Colors.black.withOpacity(0.7), colorBlendMode: BlendMode.darken,),
          ),
          Container(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 650.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/app_logo.jpg'),
                    radius: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Fitness App', style: TextStyle(color: Colors.white, fontSize: 30),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
