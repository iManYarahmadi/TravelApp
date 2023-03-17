import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelapp/config/constants.dart';

class SecondPageSlider extends StatelessWidget {
  const SecondPageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
            image: DecorationImage(
              image: AssetImage('assets/images/2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 30, top: 70),
              child: Text(
                "Skip",
                style: TextStyle(
                    color: skipColorButton,
                    fontSize: 16,
                    fontFamily: 'gillsans'),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Stack(
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'It’s a big world out\n there go ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'geometric',
                            fontSize: 30)),
                    TextSpan(
                        text: 'explore\n',
                        style: TextStyle(
                            color: Color(0xffFF7029),
                            fontFamily: 'geometric',
                            fontSize: 30)),
                  ]),
                ),
                Positioned(
                    right: 30,
                    top: 75,
                    child: SvgPicture.asset(
                      'assets/images/Vector.svg',
                      width: 85,
                    )),
              ],
            ),
            RichText(
                text: TextSpan(
                    text:
                        'To get the best of your adventure you just\n need to leave and go where you like. we are\n                       waiting for you',
                    style: TextStyle(
                        color: descriptionTextColor,
                        fontSize: 18,
                        fontFamily: 'gillsans')))
          ],
        ),
        Spacer(),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 40),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0XFF0D6EFD),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Text(
            "Next",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'switzer'),
          ),
        )
      ]),
    );
  }
}
