import 'dart:async';
import 'package:fitness_app/B_Abs_Launch/launch2.dart';
import 'package:flutter/material.dart';

class Fire extends StatefulWidget {
  const Fire({Key? key}) : super(key: key);

  @override
  State<Fire> createState() => _FireState();
}

class _FireState extends State<Fire> {
  int timeleft = 10;

  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      }else {
        timer.cancel();
       Navigator.push(context, MaterialPageRoute(builder: (context) => const Fire2())
       );
      }
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: SizedBox(
                  height: 390,
                    width: 390,
                    child: Image.asset('assets/images/jumping_jack.gif',fit: BoxFit.cover,)),
              ),
              const Text('READY TO GOO!!',style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 30),),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text('JUMPING JACKS',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(timeleft.toString(),style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              ),
              ElevatedButton(onPressed: () {
                _startCountDown();
              },
                  child: const Text('Start'),)
            ],
          ),
        ),
      ),
    );
  }
}
