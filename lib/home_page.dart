import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/available_car.dart';
import 'package:la_corda_car_rental/home_page_hamburger_on.dart';
import 'package:la_corda_car_rental/register_your_car.dart';
import 'package:la_corda_car_rental/services/auth.dart';
import 'package:la_corda_car_rental/start_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeMain(),
    );
  }
}

class HomeMain extends StatelessWidget {
  HomeMain({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    //double deviceWidth = MediaQuery.of(context).size.width;
    //double deviceHeight = MediaQuery.of(context).size.height;

    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff61b49e),
        drawer: Drawer(
            child: Drawer(
                child: Hamburger_On(
          parentContext: context,
        ))),
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(
                left: 70, right: 100, top: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(204, 0, 48, 69),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Dropoff',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 22,
                          color: Color(
                            0xff61b49e,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                      //keyboardType: TextInputt() ,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 22,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton.icon(
              icon: const Icon(
                Icons.person,
                color: Color.fromARGB(204, 0, 48, 69),
              ),
              label: const Text(
                'logout',
                style: TextStyle(color: Color.fromARGB(204, 0, 48, 69)),
              ),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Available_Car(),
      ),
    );
  }
}
