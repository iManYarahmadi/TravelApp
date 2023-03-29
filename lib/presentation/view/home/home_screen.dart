import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/config/constants.dart';
import 'package:travelapp/model/destination_model.dart';
import 'package:travelapp/presentation/view/home/page_view/pageview_destination_list.dart';

import '../../widget/my_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 18, left: 2),
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * .35,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFEFEF),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/iman.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Iman",
                      style: TextStyle(
                          fontFamily: "geometric",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .14,
                  margin: EdgeInsets.only(top: 18, left: 2),
                  padding: EdgeInsets.all(5),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0XFFEFEFEF),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/images/Notifications.svg",
                      width: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Explorer the\n',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SFdisplay',
                              fontSize: 40)),
                      TextSpan(
                          text: 'Beautiful ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'geometric',
                              fontSize: 40)),
                      TextSpan(
                          text: 'World\n',
                          style: TextStyle(
                              color: Color(0xffFF7029),
                              fontFamily: 'geometric',
                              fontSize: 40)),
                    ]),
                  ),
                  Positioned(
                    right: 20,
                    top: 95,
                    child: SvgPicture.asset('assets/images/Vector.svg'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Destination",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/listviewitem');
                  },
                  child: Text("View all",
                      style:
                          TextStyle(fontSize: 15, color: activeColorIndicator)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          PageViewDestinationList(),
        ]),
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(26, 189, 189, 189),
              borderRadius: BorderRadius.circular(40)),
          child: MyBottomNavigationBar()),
    );
  }
}
