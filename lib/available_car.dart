import 'package:flutter/material.dart';
import 'package:la_corda_car_rental/widget/block_builder_Cars.dart';

class Available_Car extends StatefulWidget {
  const Available_Car({Key? key}) : super(key: key);

  @override
  _Available_CarState createState() => _Available_CarState();
}

class _Available_CarState extends State<Available_Car> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Available_Car_Main(),
    );
  }
}

class Available_Car_Main extends StatelessWidget {
  const Available_Car_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scrollbar(
        child: Scaffold(
            backgroundColor: const Color(0xff61B49E),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff003045),
                  size: 33,
                ),
              ),
              title: const Text(
                'AVAILABLE CAR',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003045),
                  fontSize: 25,
                  letterSpacing: -1,
                ),
              ),
            ),
            body: Scrollbar(
                child: ListView.separated(
                    itemBuilder: (context, index) => Block_Builder(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: 10))),
      ),
    );
  }
}
