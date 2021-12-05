import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';
import 'package:la_corda_car_rental/widget/text_button.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 97, 180, 158),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 170),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Color(0xff003045),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 150, top: 15),
                    child: Text(
                      'Enter Full Name',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Put Your Full Name Here',TextInputType.name,false),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, right: 225),
                    child: Text(
                      'Address',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Put Your Address Here',TextInputType.emailAddress,false),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, right: 200),
                    child: Text(
                      'Phone No.',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Put Your Phone Number',TextInputType.number,false),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, right: 80),
                    child: Text(
                      'Choose Your Password',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Choose a password',TextInputType.text,true),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, right: 75),
                    child: Text(
                      'Confirm Your Password',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Confirm Your Password',TextInputType.text,true),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Custom_Button('REGISTER'),
                  ),
                  const Text(
                    'Already a memeber ?',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 19,
                      color: Color(0xff045977),
                    ),
                  ),
                  Text_button('Log In'),
                ],
              ),
            ),
          )),
        ));
  }
}