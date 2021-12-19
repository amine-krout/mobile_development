import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/Edit_Profile.dart';
import 'package:la_corda_car_rental/login_with_mediaquery.dart';
import 'package:la_corda_car_rental/widget/custom_button_3.dart';

class Hamburger_On extends StatefulWidget {
  const Hamburger_On({Key? key}) : super(key: key);

  @override
  _Hamburger_OnState createState() => _Hamburger_OnState();
}

class _Hamburger_OnState extends State<Hamburger_On> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hamburger_On_main(),
    );
  }
}

class Hamburger_On_main extends StatelessWidget {
  const Hamburger_On_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;
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
                  TextButton(
                      child: const Text(
                      'View Profile',
                      style: TextStyle(
                          color: Color(0xff003045),
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Edit_Profile(),),);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: device_height * 0.1),
                    //child: Custom_Button_3('GIVE MY CAR ON RENT'),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0xff003045),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: TextButton(
                        child: const Text(
                          'GIVE MY CAR ON RENT',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffe9e0b2),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Custom_Button_3('HISTORY'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Custom_Button_3('ABOUT US'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    // child: Custom_Button_3('SIGN OUT'),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: const Color(0xff003045),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: TextButton(
                        child: const Text(
                          'SIGN OUT',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffe9e0b2),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Login_Mediaquery(),),);
                        },
                      ),
                    ),
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
