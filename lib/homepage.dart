

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_app/Exercise_pages/b_arms_page.dart';
import 'package:fitness_app/Exercise_pages/b_chest_exercise.dart';
import 'package:fitness_app/Exercise_pages/b_legs_page.dart';
import 'package:fitness_app/b_abb_exercise.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

void signUserOut() {
  FirebaseAuth.instance.signOut();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))],
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.deepPurple
            ],),
          ),
        ),
        title: const Text('HOME WORKOUT', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'BMI')
      ],

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children:[
          Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(35)),
                gradient: LinearGradient(
                  colors: [Colors.blue,
                  Colors.deepPurple],
                ),
              ),
              height: 130,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 65.0, left: 25, right: 25),
                  child: Container(
                    height: 130,
                    width: 500,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 17,
                        spreadRadius: -15,
                      ),
                    ],
                  ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          Text('We Dont rise to the level of our',
                                style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20
                            ),
                          ),
                          Text('expectations,', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Text('we fall to the level of our training.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, right: 260),
                  child: Text('BEGINNER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const AbExercise()));
                      },
                      child: SizedBox(
                        width: 359,
                        height: 170,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset('assets/images/absbeginner.jpg',fit: BoxFit.cover, color: Colors.black.withOpacity(0.4), colorBlendMode: BlendMode.darken,)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 115.0, left: 23),
                      child: Text('ABS BEGINNER', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                    ],
                  ),
                Stack(
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ChestExercise()));
                      },
                      child: SizedBox(
                        height: 175,
                        width: 360,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                            child: Image.asset('assets/images/push_ups_beginner.jpg', fit: BoxFit.cover, color: Colors.black.withOpacity(0.4), colorBlendMode: BlendMode.darken,)
                        ),
                      ),
                    ),
                  ),
                    const Padding(
                      padding: EdgeInsets.only(top: 130.0, left: 23.0),
                      child: Text('CHEST BEGINNER', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ArmsExercise()));
                        },
                        child: SizedBox(
                          height: 175,
                          width: 360,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/arms_beginner.jpg', fit: BoxFit.cover, color: Colors.black.withOpacity(0.4), colorBlendMode: BlendMode.darken,)
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 130.0, left: 23.0),
                      child: Text('ARMS BEGINNER', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LegsExercise()));
                        },
                        child: SizedBox(
                          height: 175,
                          width: 360,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset('assets/images/legs_beginner.jpg', fit: BoxFit.cover, color: Colors.black.withOpacity(0.4), colorBlendMode: BlendMode.darken,)
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 130.0, left: 23.0),
                      child: Text('LEGS BEGINNER', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}
