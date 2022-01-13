import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/database.dart';
import 'package:la_corda_car_rental/home_page.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';
import 'package:la_corda_car_rental/widget/style_container_input.dart';

class Register_Car extends StatefulWidget {
  const Register_Car({Key? key}) : super(key: key);

  @override
  State<Register_Car> createState() => _Register_CarState();
}

class _Register_CarState extends State<Register_Car> {
  String model = '';
  String carNumber = '';
  String aadharCard = '';
  double pricePerDay = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff61b49e),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 35,
              color: Color(0xff003045),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'REGISTER YOUR CAR',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff003045)),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80, right: 140),
                child: Text(
                  'Car Model Name',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 19,
                    color: Color(0xff045977),
                  ),
                ),
              ),
              Customised_container(
                  'Put Your Car Model Name', TextInputType.name, false,
                  (newText) {
                setState(() => model = newText);
              }),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 185),
                child: Text(
                  'Car Number',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 19,
                    color: Color(0xff045977),
                  ),
                ),
              ),
              Customised_container(
                  'Put Your Car Number', TextInputType.number, false,
                  (newText) {
                setState(() => carNumber = newText);
              }),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 180),
                child: Text(
                  'Aadhar Card',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 19,
                    color: Color(0xff045977),
                  ),
                ),
              ),
              Customised_container(
                  'Put Your Aadhard Card', TextInputType.number, false,
                  (newText) {
                setState(() {
                  aadharCard = newText;
                });
              }),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 180),
                child: Text(
                  'Rent Amount',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 19,
                    color: Color(0xff045977),
                  ),
                ),
              ),
              Customised_container(
                  'Put Your Rent Amount Per Day', TextInputType.name, false,
                  (newText) {
                setState(() {
                  pricePerDay = double.parse(newText);
                });
              }),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Custom_Button('REGISTER CAR', () {
                  Database.addCar(
                      model: model,
                      carNumber: carNumber,
                      aadharCard: aadharCard,
                      pricePerDay: pricePerDay);
                }),
              )
            ],
          ),
        )),
      ),
    );
  }
}
