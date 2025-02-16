import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/homepage.dart';
import 'package:fitness_app/pages/login_or_register_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return const Homepage();
          }
          //user is Not logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
