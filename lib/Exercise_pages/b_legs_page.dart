import 'package:flutter/material.dart';

class LegsExercise extends StatefulWidget {
  const LegsExercise({Key? key}) : super(key: key);

  @override
  State<LegsExercise> createState() => _LegsExerciseState();
}

class _LegsExerciseState extends State<LegsExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 175,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/push_ups_beginner.jpg'), fit: BoxFit.fill),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 100.0, right: 30.0),
          child: Text('CHEST BEGINNER'),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Container(),label: "Start"),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(
              color: Colors.blueGrey,
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))), enableDrag: false, context: context, builder: (BuildContext) {
                  return Scaffold(
                    body: Column(
                      children: [
                        Image.asset('assets/images/jumping_jack.gif'),
                        const Padding(
                          padding: EdgeInsets.only(top: 19.0, right: 35.0),
                          child: Text('JUMPING JACKS 20s', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Start with your feet together and your arms by your sides, then jump up with your feet apart'
                              'and your hands overhead.',style: TextStyle(fontSize: 20),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Return to the start position then do the next rep. This exercise provides a full-body'
                              ' workout and works all your large muscle groups.', style: TextStyle(fontSize: 20),),
                        )
                      ],
                    ),
                  );
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Icon(Icons.menu),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 20),
                      child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.asset('assets/images/jumping_jack.gif', fit: BoxFit.cover,)
                      ),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: Text('JUMPING JACKS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 20),
                          child: Text('00:20s', style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((context){
                      return Scaffold(
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/abdominal_crunches.gif'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 19.0),
                              child: Text('CRUNCHES x16',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Lie on your back with your knees bent and your arms stretched forward.',style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Then lift your upper body off the floor. Hold for a few seconds and slowely return.',style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('It primarily works the rectus abdominis muscle and the obliques.',style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                      );
                    }
                    ));
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.menu),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,),
                    child: SizedBox(
                        height: 110,
                        width: 130,
                        child: Image.asset('assets/images/abdominal_crunches.gif')),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 49.0),
                        child: Text('CRUNCHES',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45.0, top: 8),
                        child: Text('X16',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(context: context, builder: ((context){
                  return Scaffold(
                    body: Column(
                      children: [
                        Image.asset('assets/images/russian_twist.gif'),
                        const Text('RUSSIAN TWIST x20',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text('Each Side x10', style: TextStyle(fontSize: 20, color: Colors.grey),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Sit on the floor with your knees straight, feet lifted a little bit and back tilted backwards.',style: TextStyle(fontSize: 20),),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Then hold your hands together and twist from side to side.',style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                  );
                }));
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.menu),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 5),
                    child: SizedBox(
                      height:100,
                      width: 130,
                      child: Image.asset('assets/images/russian_twist.gif',fit: BoxFit.cover,),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        Text('RUSSIAN TWIST',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text('X20',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Divider(
                color: Colors.blueGrey,
                thickness: 2,
                endIndent: 15,
                indent: 15,
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((context){
                      return Scaffold(
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/plank.gif'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 19.0),
                              child: Text('PLANK 20s',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Lie on the floor with your toes and palms on the ground.'
                                  'Keep your body straight and hold this position as long as you can.',style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('This exercise strengthens the abdomen,back and shoulders.',style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                      );
                    }
                    ));
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.menu),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,),
                    child: SizedBox(
                        height: 110,
                        width: 130,
                        child: Image.asset('assets/images/plank.gif')),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 70.0),
                        child: Text('PLANK',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 70.0, top: 8),
                        child: Text('X16',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.blueGrey,
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: ((context){
                      return Scaffold(
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/images/leg_raises.gif'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 19.0),
                              child: Text('LEG RAISES x16',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Lie down on your back, and put your hands beneath you hips for support.',style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Then lift your legs up alternately until they form a right angle with the floor.',style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Slowly bring your legs back down and repeat the exercise.',style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                      );
                    }
                    ));
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.menu),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,),
                    child: SizedBox(
                        height: 100,
                        width: 140,
                        child: Image.asset('assets/images/leg_raises.gif',fit: BoxFit.cover,)),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 39.0),
                        child: Text('LEG RAISES',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 44.0, top: 8),
                        child: Text('X16',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // extendBodyBehindAppBar: true,
    );
  }
}
