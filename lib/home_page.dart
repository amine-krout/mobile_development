import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff61b49e),
        appBar: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dehaze,
              size: 35,
              color: Color.fromARGB(204, 0, 48, 69),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Padding(
            padding:
                const EdgeInsets.only(left: 70, top: 10, right: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(204, 0, 48, 69),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Padding(
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
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(child: Column(
          children: const  [
            //Google_maps_API_flutter,
          ],
        )),
      ),
    );
  }
}
