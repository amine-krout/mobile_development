import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button_2.dart';

class My_Ride extends StatelessWidget {
  const My_Ride({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff61b49e),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
              color: Color(0xff003045),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'MY RIDE',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff003045)),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
                child: Container(
                  height: 120,
                  width: 354,
                  decoration: const BoxDecoration(
                    color: Color(0xffe9e0b2),
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
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
                child: Container(
                  height: 120,
                  width: 354,
                  decoration: const BoxDecoration(
                    color: Color(0xffe9e0b2),
                    //borderRadius: BorderRadius.circular(20),
                    /*boxShadow: const [
                      BoxShadow(
                        color: Color(0xff003045),
                        blurRadius: 3,
                        spreadRadius: 0,
                        offset: Offset(10.0, 10.0),
                      ),
                    ],*/
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
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(90)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Custom_Button_2('BOOK A RIDE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
