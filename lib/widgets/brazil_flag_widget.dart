import 'package:flutter/material.dart';

class BrazilFlagWidget extends StatelessWidget {
  const BrazilFlagWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 260,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.green,
                    Colors.black,
                  ],
                  radius: 4,
                  focal: Alignment.center,
                  focalRadius: .5,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: 0.78, // this is in radians
                child: Container(
                  width: 170,
                  height: 170,
                  color: Colors.yellow,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: // this is in radians
                  Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Brasil",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
