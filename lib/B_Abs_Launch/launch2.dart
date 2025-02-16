
import 'package:flutter/material.dart';

import 'launch3.dart';

class Fire2 extends StatefulWidget {
  const Fire2({Key? key}) : super(key: key);

  @override
  State<Fire2> createState() => _Fire2State();
}

class _Fire2State extends State<Fire2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body:
      Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text('TAKE REST',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.deepPurple),),
          ),
      const Padding(
        padding: EdgeInsets.only(top: 100.0),
        child:
        Text('NEXT SET IS ABDOMINAL',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.purple),
        ),
      ),
      const Text('CRUNCHES',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.purple),),
      Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Fire3()));
        }, child: const Text('LET\'S GOO!!'),),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 100.0, right: 20, left: 20),
        child: Container(
               color: Colors.purple,
               child: Image.asset('assets/images/abdominal_crunches.gif'),
           ),
      ),
        ],
      ),
      
    );
  }
}
