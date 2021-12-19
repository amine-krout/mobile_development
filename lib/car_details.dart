import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';

class Car_Details extends StatefulWidget {
  const Car_Details({Key? key}) : super(key: key);

  @override
  _Car_DetailsState createState() => _Car_DetailsState();
}

class _Car_DetailsState extends State<Car_Details> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Car_Details_Main(),
    );
  }
}

class Car_Details_Main extends StatelessWidget {
  const Car_Details_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff61B49E),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff003045),
              Color.fromARGB(50, 0, 48, 69),
              Colors.transparent
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: device_width * 0.55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE9E0B2),
                ),
              ),
            ),
            Container(
              height: device_height * 0.35,
              width: device_width * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xff003045),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  'FULL CAR DETAILS',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      wordSpacing: -5,
                      color: Color(0xffE9E0B2)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'TOTAL AMOUNT : 300£',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    wordSpacing: 0,
                    color: Color(0xff003045)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Custom_Button('PAY'),
            ),
          ],
        ),
      ),
    );
  }
}
