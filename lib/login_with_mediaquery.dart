import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/home_page.dart';
import 'package:la_corda_car_rental/register_page.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/text_button.dart';

class Login_Mediaquery extends StatefulWidget {
  const Login_Mediaquery({Key? key}) : super(key: key);

  @override
  _Login_MediaqueryState createState() => _Login_MediaqueryState();
}

class _Login_MediaqueryState extends State<Login_Mediaquery> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Log(),
    );
  }
}

class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 97, 180, 158),
        body: SafeArea(
            child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: height * 0.06),
                child: const Text(
                  ('Login'),
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 31,
                      color: Color(0xff003045)),
                ),
              ),
              /* const Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 19,
                            color: Color(0xff045977)),
                      ),   */
              Padding(
                padding: EdgeInsets.only(top: height * 0.18),
                child: Customised_container(
                    'Put Your Username', TextInputType.name, false),
              ),
              /* const Text(
                      'Password',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ), */
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: Customised_container(
                    'Type Your Password', TextInputType.text, true),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.18, bottom: height * 0.03),
                /* child: Custom_Button(
                  'LOGIN',
                ),*/
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    color: const Color(0xffe9e0b2),
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: TextButton(
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff003045),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Home(),),);
                    },
                  ),
                ),
              ),
              const Text(
                'Not Registred ?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 19,
                  color: Color(0xff045977),
                ),
              ),
              //Text_button('Register'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ),
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      decoration: TextDecoration.underline,
                      color: Color(0xff003045)),
                ),
              ),
            ],
          ),
        )));
  }
}
