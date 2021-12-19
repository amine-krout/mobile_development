import 'package:flutter/material.dart';

class Block_Builder_Rides extends StatelessWidget {
  const Block_Builder_Rides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
          child: Container(
            height: 150,
            width: 354,
            decoration: BoxDecoration(
              color: const Color(0xffe9e0b2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff003045),
                  blurRadius: 3,
                  spreadRadius: 0,
                  offset: Offset(10.0, 10.0),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'RENT BY - USER NAME\nPICK UP - DATE & TIME\nDROP OFF - DATE & TIME\nPAYMENT RECIEVED',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff003045),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
