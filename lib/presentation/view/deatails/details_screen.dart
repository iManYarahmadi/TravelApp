import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/model/destination_model.dart';

import '../../../config/constants.dart';
import '../home/list_view_item/listview_itemcard.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.des}) : super(key: key);
  final Destinitation des;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/${des.image}"),
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 35),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: Icon(
                          Icons.navigate_before,
                          size: 30,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 360,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            topLeft: Radius.circular(70)),
                        color: Colors.white),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${des.name}',
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      height: 8,
                      color: deactiveColorIndicator,
                    ),
                    AllComponent(location: '${des.location}'),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ImageShow(
                          image: 'assets/images/mainp1.png',
                        ),
                        ImageShow(
                          image: 'assets/images/mainp2.png',
                        ),
                        ImageShow(
                          image: 'assets/images/mainp3.png',
                        ),
                        ImageShow(
                          image: 'assets/images/1.png',
                        ),
                        ImageShow(
                          image: 'assets/images/2.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "About Destination",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... Read More",
                        style: TextStyle(
                            fontSize: 15, color: descriptionTextColor),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0XFF0D6EFD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "Reserve Hotel",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'switzer'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}

class ImageShow extends StatelessWidget {
  const ImageShow({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ))
      ],
    );
  }
}
