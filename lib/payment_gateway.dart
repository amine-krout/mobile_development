import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/custom_button_3.dart';

class Payment_Gateway extends StatefulWidget {
  const Payment_Gateway({Key? key}) : super(key: key);

  @override
  _Payment_GatewayState createState() => _Payment_GatewayState();
}

class _Payment_GatewayState extends State<Payment_Gateway> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Payment_Gateway_Main(),
    );
  }
}

class Payment_Gateway_Main extends StatelessWidget {
  const Payment_Gateway_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff61B49E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'PAYMENT GATEWAY',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 27,
            color: Color(0xff003045),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: device_width * 0.1, top: device_height * 0.05),
        child: Column(
          children: [
            Container(
              height: device_height * 0.65,
              width: device_width * 0.8,
              decoration: BoxDecoration(
                color: const Color(0xff003045),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Custom_Button_3('PAY & BOOK THE RIDE'),
            ),
          ],
        ),
      ),
    );
  }
}
