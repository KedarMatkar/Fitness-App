import 'dart:async';
import 'package:flutter/material.dart';

import 'launch4.dart';

class Fire3 extends StatefulWidget {
  const Fire3({Key? key}) : super(key: key);

  @override
  State<Fire3> createState() => _Fire3State();
}

class _Fire3State extends State<Fire3> {
  int timeleft = 40;

  void _startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeleft > 0) {
        setState(() {
          timeleft--;
        });
      }else {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context) => const Fire4()),
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
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                    height: 390,
                    width: 390,
                    child: Image.asset('assets/images/abdominal_crunches.gif')),
              ),
              const Text('READY TO GOO!!',style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 30),),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text('ABDOMINAL CRUNCHES',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
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
