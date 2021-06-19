import 'package:flutter/material.dart';

class UsaFlagWidget extends StatelessWidget {
  const UsaFlagWidget({
    Key? key,
  }) : super(key: key);

  final double startSize = 15;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 260,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(
                7,
                (index) => Container(
                  width: MediaQuery.of(context).size.width,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Container(
                  width: 180,
                  height: 140,
                  decoration: BoxDecoration(color: Colors.blue.shade900),
                ),
                Container(
                  width: 180,
                  height: 140,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        6,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            6,
                            (index) => Icon(
                              Icons.star,
                              color: Colors.white,
                              size: startSize,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 140,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        5,
                        (index) => Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              color: Colors.white,
                              size: startSize,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Estados Unidos",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
