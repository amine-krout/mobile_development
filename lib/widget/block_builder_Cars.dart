import 'package:flutter/material.dart';

class Block_Builder extends StatelessWidget {
  final String modelName;
  final double pricePerDay;
  Block_Builder({Key? key, required this.modelName, required this.pricePerDay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(device_width * 0.01),
      child: Column(
        children: [
          Container(
            height: device_width * 0.38,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff003045),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: device_width * 0.1, right: device_width * 0.1),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: device_height * 0.09,
                    width: device_width * 0.66,
                    decoration: BoxDecoration(
                      color: const Color(0xffE9E0B2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'CAR RENT = ${pricePerDay.toString()} £',
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff003045)),
                          ),
                        ),
                        Text(
                          'MODEL NAME = ${modelName}',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff003045)),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: Color(0xff003045),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
