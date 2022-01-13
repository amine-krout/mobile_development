import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/services/auth.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';
import 'package:la_corda_car_rental/widget/text_button.dart';
import 'package:la_corda_car_rental/home_page.dart';

class Register extends StatefulWidget {
  final Function? toggleView;
  const Register({Key? key, this.toggleView}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  String fullName = '';
  String email = '';
  String phoneNo = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 97, 180, 158),
          appBar: AppBar(
            backgroundColor: Color(0xff003045),
            elevation: 0.0,
            title: Text('Register to La Corda Car Rental'),
            actions: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.person),
                label: Text('Login'),
                onPressed: () => widget.toggleView!(),
              ),
            ],
          ),
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
                  Customised_container(
                      'Put Your Full Name Here', TextInputType.name, false,
                      (newText) {
                    setState(() => fullName = newText);
                  }),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, right: 225),
                    child: Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 19,
                          color: Color(0xff045977)),
                    ),
                  ),
                  Customised_container('Put Your Email Address Here',
                      TextInputType.emailAddress, false, (newText) {
                    setState(() => email = newText);
                  }),
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
                  Customised_container(
                      'Put Your Phone Number', TextInputType.number, false,
                      (newText) {
                    setState(() => phoneNo = newText);
                  }),
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
                  Customised_container(
                      'Choose a password', TextInputType.text, true, (newText) {
                    setState(() => password = newText);
                  }),
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
                  Customised_container(
                      'Confirm Your Password', TextInputType.text, true,
                      (newText) {
                    setState(() => password = newText);
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    //child: Custom_Button('REGISTER'),
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xffe9e0b2),
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child: TextButton(
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff003045),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () async {
                          dynamic result =
                              await _auth.registerWithEmailAndPassword(
                                  email, password, fullName);
                          if (result != null) {
                            print("success");
                            print(result.uid);
                          } else {
                            print("error signed in");
                          }
                        },
                      ),
                    ),
                  ),
                  const Text(
                    'Already a memeber ?',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 19,
                      color: Color(0xff045977),
                    ),
                  ),
                  //Text_button('Log In'),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Log In',
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
            ),
          )),
        ));
  }
}
