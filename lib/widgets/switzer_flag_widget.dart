import 'package:flutter/material.dart';

class SwitzerFlagWidget extends StatelessWidget {
  const SwitzerFlagWidget({
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
                    Colors.red,
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
                child: Stack(
                  children: [
                    Container(
                      width: 170,
                      height: 50,
                      color: Colors.white,
                    ),
                    Transform.rotate(
                      angle: 1.57,
                      child: Container(
                        width: 170,
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Suiça",
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
