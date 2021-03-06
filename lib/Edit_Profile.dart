import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/home_page.dart';
import 'package:la_corda_car_rental/widget/custom_button_3.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  _Edit_ProfileState createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Edit_Profile_Main(),
    );
  }
}

class Edit_Profile_Main extends StatelessWidget {
  const Edit_Profile_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff61B49E),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
          ),
          title: Text("Edit Profile"),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff003045),
                Color.fromARGB(50, 0, 48, 69),
                Colors.transparent
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  width: device_width,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE9E0B2),
                  ),
                  child: Image.asset('assets/images/avatar.png'),
                ),
              ),
              Custom_Button_3('EDIT PROFILE'),
              Padding(
                padding: EdgeInsets.only(top: device_height * 0.2),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.car_repair,
                            size: 40,
                            color: Color(0xff003045),
                          ),
                          const Text(
                            'MY RIDES',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0xff003045),
                              letterSpacing: -1,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Color(0xff003045),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.attach_money,
                            size: 40,
                            color: Color(0xff003045),
                          ),
                          const Text(
                            'MY RIDES',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Color(0xff003045),
                              letterSpacing: -1,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 25,
                              color: Color(0xff003045),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
