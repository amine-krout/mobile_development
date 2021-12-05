
import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';
import 'package:la_corda_car_rental/widget/text_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 180, 158),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                const Padding (
                  padding: EdgeInsets.only(right: 170),
                  child:Text(
                    ('Login'),
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 31,
                        color: Color(0xff003045)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70, bottom: 5, right: 170),
                  child: Text(
                    'Username',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 19,
                        color: Color(0xff045977)),
                  ),
                ),
                Customised_container('Put Your Username',TextInputType.name,false),
                /*Container(
                    height: 55,
                    width: 340,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(204, 0, 48, 69),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Put Your Username',
                          hintStyle: TextStyle(
                            color: Color(0xff478878),
                          ),
                        ),
                        onTap: () {},
                       
                      ),
                    )),*/
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5, right: 170),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 19,
                        color: Color(0xff045977)),
                  ),
                ),
                /*Container(
                    height: 55,
                    width: 340,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(204, 0, 48, 69),
                        borderRadius: BorderRadius.circular(27)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Put Your Username',
                          hintStyle: TextStyle(color: Color(0xff478878)),
                        ),
                        onTap: () {},
                      ),
                    )),*/
                Customised_container('Type Your Password', TextInputType.text, true),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: 
                  Custom_Button('LOGIN',)
                  /* Container(
                    height: 55,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffe9e0b2),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: TextButton(
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Color(0xff003045)),
                      ),
                      onPressed: () {},
                    ),
                  ),*/
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    'Not Registred ?',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      
                      fontSize: 19,
                      color: Color(0xff045977),
                    ),
                  ),
                ),
                Text_button('Register'),
                /*TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 19,
                        decoration: TextDecoration.underline,
                        color: Color(0xff003045)),
                  ),
                ),*/
              ],
            ),
          ),
        )),
      ),
    );
  }
}