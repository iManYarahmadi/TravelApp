import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/config/constants.dart';
import 'package:travelapp/model/destination_model.dart';

class ListViewItemCard extends StatelessWidget {
  const ListViewItemCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.onpress,
  }) : super(key: key);
  final String image;
  final String name;
  final String location;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: descriptionTextColor.withOpacity(0.3),
                              ),
                              child: const Icon(
                                Icons.bookmark_border_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(name,
                      style:
                          const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  AllComponent(location: location),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AllComponent extends StatelessWidget {
  const AllComponent({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/Location.svg",
                width: 23,
              ),
              Text(location,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: descriptionTextColor)),
            ],
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow.shade700,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow.shade700,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("4.7",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        const Text("\$100",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: activeColorIndicator)),
      ],
    );
  }
}
