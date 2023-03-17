import 'package:flutter/material.dart';

class Destinitation {
  String? image;
  String? name;
  String? location;
  double? rate;
  Color? startColor;
  Color? endColor;

  Destinitation(
      {this.image,
      this.name,
      this.location,
      this.rate,
      this.startColor,
      this.endColor});
}

var destination = [
  Destinitation(
    image: 'mainp1.png',
    name: 'Niladri Reservoir',
    location: 'Tekergat , Sunamgnj',
    rate: 4.7,
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Destinitation(
    image: 'mainp2.png',
    name: 'Darma Reservoir',
    location: 'Darma, Kuningan',
    rate: 4.9,
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  ),
  Destinitation(
    image: 'mainp3.png',
    name: 'Niladri Reservoir',
    location: 'Tekergat , Sunamgnj',
    rate: 4.7,
    startColor: const Color(0xFFF37552),
    endColor: const Color(0xFFF58B5A),
  )
];
