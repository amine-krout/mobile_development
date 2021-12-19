import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/home_page_hamburger_on.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Main(),
      
    );
  }
}
class Home_Main extends StatelessWidget {
  const Home_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double deviceWidth = MediaQuery.of(context).size.width;
    //double deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff61b49e),
          appBar: AppBar(
            toolbarHeight: 90,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Hamburger_On(),),);
              },
              icon: const Icon(
                Icons.dehaze,
                size: 35,
                color: Color.fromARGB(204, 0, 48, 69),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(
                  left: 70, right: 10, top: 10, bottom: 10),
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
          ),
          body: Container(
            ),
        ),
      );
  }
}
