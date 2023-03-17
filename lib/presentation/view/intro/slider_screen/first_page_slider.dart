import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/constants.dart';

class FirstPageSlider extends StatelessWidget {
  const FirstPageSlider({Key? key}) : super(key: key);

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
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 30, top: 70),
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
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Stack(
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Life is short and the\n    world is ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'geometric',
                            fontSize: 30)),
                    TextSpan(
                        text: 'wide\n',
                        style: TextStyle(
                            color: Color(0xffFF7029),
                            fontFamily: 'geometric',
                            fontSize: 30)),
                  ]),
                ),
                Positioned(
                    right: 58,
                    top: 70,
                    child: SvgPicture.asset('assets/images/Vector.svg')),
              ],
            ),
            RichText(
                text: const TextSpan(
                    text:
                        'At Friends tours and travel, we customize\n reliable and trutworthy educational tours to\n        destinations all over the world',
                    style: TextStyle(
                        color: descriptionTextColor,
                        fontSize: 18,
                        fontFamily: 'gillsans')))
          ],
        ),
        const Spacer(),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 40),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0XFF0D6EFD),
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
