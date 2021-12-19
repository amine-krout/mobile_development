import 'dart:html';

import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/block_builder_rides.dart';
import 'package:la_corda_car_rental/widget/custom_button_3.dart';

class Book_Ride extends StatelessWidget {
  const Book_Ride({Key? key}) : super(key: key);

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
            'MY CAR RIDES',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff003045)),
          ),
        ),
        body: Scrollbar(
          child: ListView.separated(
              itemBuilder: (context, index) => const Block_Builder_Rides(),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 0,
                  ),
              itemCount: 10),
              isAlwaysShown: null,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal:70 ),
          child: BottomAppBar(
            child: Custom_Button_3('BOOK A RIDE'),
            color: Colors.transparent,
            elevation: 0,
          ),
        ),
        
        /* SafeArea(
            child: Column(
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
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30, top: 15),
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
                      )
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Custom_Button_2('BOOK A RIDE')
            ),
          ],
        )),*/
      ),
    );
  }
}
