import 'package:flutter/material.dart';

class Block_Builder_My_Rides extends StatelessWidget {
  const Block_Builder_My_Rides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
          child: Container(
            height: 120,
            width: 354,
            decoration: const BoxDecoration(
              color: Color(0xffe9e0b2),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'PICK-UP DATE, TIME & PLACE\nDROP-OFF DATE, TIME & PLACE\nPAYEMENT - XXXXX',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff003045)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 207,
            left: 30,
          ),
          child: Container(
            height: 60,
            width: 177,
            decoration: const BoxDecoration(
              color: Color(0xff003045),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10,left: 20,),
              child: Text(
                'CAR OWNER : FOULEN\nCAR : BMW\nMODEL : 2016',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Color(0xffe9e0b2),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
