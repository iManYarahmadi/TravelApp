import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travelapp/model/destination_model.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard(
      {Key? key, this.active, this.index, required this.destinitation})
      : super(key: key);

  final bool? active;
  final int? index;
  final Destinitation destinitation;

  @override
  Widget build(BuildContext context) {
    final double blur = active! ? 13 : 0;
    final double offset = active! ? 4 : 0;
    final double top = active! ? 0 : 46;
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOutQuint,
            margin: EdgeInsets.only(
              top: top,
              bottom: 0,
              right: 15.5,
              left: active! ? 28 : 0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: destinitation.startColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black87.withOpacity(0.3),
                    blurRadius: blur,
                    offset: Offset(0, offset)),
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${destinitation.image}')),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(
                        colors: [
                          destinitation.startColor!,
                          destinitation.endColor!.withOpacity(0.01),
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        tileMode: TileMode.clamp,
                        stops: const [0.1, 0.4],
                      )),
                ),
              ],
            ),
          ),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${destinitation.name}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("${destinitation.rate}",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(children: [
                  SvgPicture.asset(
                    "assets/images/Location.svg",
                    width: 23,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text("${destinitation.location}",
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff7D848D))),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30,
                    width: 100,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          right: 60,
                          child: Image.asset(
                            'assets/images/profile1.png',
                          ),
                        ),
                        Positioned.fill(
                            right: 30,
                            child: Image.asset('assets/images/profile2.png')),
                        Positioned.fill(
                            right: 5,
                            child: Image.asset('assets/images/profile3.png')),
                        Positioned.fill(
                          left: 49,
                          top: 2,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/profile4.png',
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text(
                                  "+50",
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ])
      ],
    );
  }
}
