import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/available_car.dart';
import 'package:la_corda_car_rental/models/carDetails.dart';
import 'package:la_corda_car_rental/widget/custom_button.dart';

class Car_Details extends StatefulWidget {
  CarDetails carDetails;
  Car_Details({Key? key, required this.carDetails}) : super(key: key);

  @override
  _Car_DetailsState createState() => _Car_DetailsState();
}

class _Car_DetailsState extends State<Car_Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Car_Details_Main(
        carDetails: widget.carDetails,
      ),
    );
  }
}

class Car_Details_Main extends StatelessWidget {
  CarDetails carDetails;
  Car_Details_Main({Key? key, required this.carDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff61B49E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Available_Car(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff003045),
            size: 33,
          ),
        ),
        title: const Text(
          'AVAILABLE CARS',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color(0xff003045),
            fontSize: 25,
            letterSpacing: -1,
          ),
        ),
      ),
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
        child: SingleChildScrollView(
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
                  child: Image.asset('assets/images/car.png'),
                ),
              ),
              Container(
                height: device_height * 0.22,
                width: device_width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(0xff003045),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Model: ${carDetails.model}',
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            wordSpacing: -5,
                            color: Color(0xffE9E0B2)),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Car Number: ${carDetails.car_number}',
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            wordSpacing: -5,
                            color: Color(0xffE9E0B2)),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Aadhar Card: ${carDetails.aadhar_card}',
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            wordSpacing: -5,
                            color: Color(0xffE9E0B2)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'TOTAL AMOUNT : ' + carDetails.price_per_day.toString() + '£',
                  style: const TextStyle(
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
      ),
    );
  }
}
