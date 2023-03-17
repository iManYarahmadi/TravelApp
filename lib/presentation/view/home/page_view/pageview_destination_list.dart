import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/model/destination_model.dart';

import '../list_view_item/destination_card.dart';

class PageViewDestinationList extends StatefulWidget {
  const PageViewDestinationList({Key? key}) : super(key: key);

  @override
  State<PageViewDestinationList> createState() =>
      _PageViewDestinationListState();
}

class _PageViewDestinationListState extends State<PageViewDestinationList> {
  final PageController pageController = PageController(viewportFraction: 0.90);
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 420,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: destination.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currentpage;
          return Opacity(
            opacity: currentpage == index ? 1.0 : 0.5,
            child: DestinationCard(
              active: active,
              index: index,
              destinitation: destination[index],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentpage != position) {
        setState(() {
          currentpage = position;
        });
      }
    });
  }
}
