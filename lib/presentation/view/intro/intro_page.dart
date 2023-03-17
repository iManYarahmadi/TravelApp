import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travelapp/config/constants.dart';
import 'package:travelapp/presentation/view/intro/slider_screen/first_page_slider.dart';
import 'package:travelapp/presentation/view/intro/slider_screen/second_page_slider.dart';
import 'package:travelapp/presentation/view/intro/slider_screen/third_page_slider.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);
  final contoller = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width * .4;
    return Stack(children: [
      PageView(
        controller: contoller,
        children: const [FirstPageSlider(), SecondPageSlider(), ThirdPageSlider()],
      ),
      Positioned(
          bottom: 113,
          left: size,
          child: SmoothPageIndicator(
            controller: contoller,
            count: 3,
            effect: const ExpandingDotsEffect(
                activeDotColor: activeColorIndicator,
                dotColor: deactiveColorIndicator),
          )),
    ]);
  }
}
