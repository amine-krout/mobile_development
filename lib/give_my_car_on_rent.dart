import 'package:flutter/material.dart';
class Give_My_Car_On_Rent extends StatefulWidget {
  const Give_My_Car_On_Rent({ Key? key }) : super(key: key);

  @override
  _Give_My_Car_On_RentState createState() => _Give_My_Car_On_RentState();
}

class _Give_My_Car_On_RentState extends State<Give_My_Car_On_Rent> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Give_My_Car_On_Rent_Main(),
      
    );
  }
}

class Give_My_Car_On_Rent_Main extends StatelessWidget {
  const Give_My_Car_On_Rent_Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        
      ),
    );
  }
}