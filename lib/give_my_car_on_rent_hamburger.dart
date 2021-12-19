import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button_3.dart';

class Hamburger_On_2 extends StatefulWidget {
  const Hamburger_On_2({Key? key}) : super(key: key);

  @override
  _Hamburger_On_2State createState() => _Hamburger_On_2State();
}

class _Hamburger_On_2State extends State<Hamburger_On_2> {
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hamburger_On_main_2(),
    );
  }
}

class Hamburger_On_main_2 extends StatelessWidget {
  const Hamburger_On_main_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_height=MediaQuery.of(context).size.height;
    double device_width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff003045),
      //appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: const Color(0xffE9E0B2),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.75,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: device_height * 0.26,
                    width: device_height * 0.26,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff003045)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'View Profile',
                      style: TextStyle(
                          color: Color(0xff003045),
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: device_height*0.1 ),
                    child: Custom_Button_3('BOOK A RIDE'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Custom_Button_3('REGISTER MY CAR'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Custom_Button_3('MY CAR HISTORY'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Custom_Button_3('SIGN OUT'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
