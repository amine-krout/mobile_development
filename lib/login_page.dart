import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/services/auth.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';
import 'package:la_corda_car_rental/widget/text_button.dart';

class Login extends StatefulWidget {
  final Function? toggleView;
  const Login({Key? key, this.toggleView}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();

  String email = '';
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
          title: Text('Sign in to Brew Crew'),
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.person),
              label: Text('Register'),
              onPressed: () => widget.toggleView!(),
            ),
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
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
                Customised_container(
                    'Put Your Username', TextInputType.name, false, (newText) {
                  setState(() => email = newText);
                }),
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
                Customised_container(
                    'Type Your Password', TextInputType.text, true, (newText) {
                  setState(() => password = newText);
                }),
                Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Custom_Button('LOGIN', () async {
                      dynamic result = await _auth.loginWithEmailAndPassword(
                          email, password);
                      if (result != null) {
                        print("success");
                        print(result.uid);
                      } else {
                        print("error signed in");
                      }
                    })
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
