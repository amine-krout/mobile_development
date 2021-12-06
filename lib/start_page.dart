import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start ({ Key? key }) : super(key: key);
  @override 
  Widget build(BuildContext context) {

    return const MaterialApp(
      home : Scaffold(
        backgroundColor: Color.fromARGB(255, 97, 180, 158),
        body: 
        Center(
          child: Image(
            width: 380  ,
            image: AssetImage('images/App_logo-01.png'), 
          ),
        ),
        ) ,
      );
  }
}


