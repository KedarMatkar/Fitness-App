import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/components/my_textfield.dart';
import 'package:fitness_app/components/my_button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //sign user up
  void signUserUp() async {
    //show loading circle
    showDialog(context: context, builder: (context) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },);

    //error message to the user
    void showErrorMessage(String message) {
      showDialog(context: context, builder: (context) {
        return AlertDialog(backgroundColor: Colors.deepPurple ,
          title: Center(child: Text(message, style: const TextStyle(color: Colors.white),)),
        );
      },);
    }


    //try creating the user
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      //show error message
      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                //logo
                const Icon(Icons.lock,
                  size: 100,
                ),

                const SizedBox(height: 50),

                //welcome back, you've been missed!
                Text('Welcome back you\'ve been missed!',
                  style: TextStyle(color: Colors.grey[700],
                      fontSize: 16),
                ),

                const SizedBox(height: 25),

                //username textfield
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 25,),
                //password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25,),
                //confirm password textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25,),
                //sign in button
                MyButton(
                    text: 'Sign Up',
                    onTap: signUserUp
                ),

                const SizedBox(height: 40),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',style: TextStyle(fontSize: 20),),
                    const SizedBox(width: 4),
                    GestureDetector(
                        onTap: widget.onTap,
                        child: const Text('Login now',
                          style: TextStyle(color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
