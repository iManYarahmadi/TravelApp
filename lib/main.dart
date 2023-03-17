import 'package:flutter/material.dart';
import 'package:travelapp/model/destination_model.dart';
import 'package:travelapp/presentation/view/home/profile/edit_profile.dart';
import 'package:travelapp/presentation/view/home/home_screen.dart';
import 'package:travelapp/presentation/view/home/list_view_item/listview_item.dart';
import 'package:travelapp/presentation/view/intro/intro_page.dart';
import 'package:travelapp/presentation/view/intro/splash_screen/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        "/": (context) => const SplashScreen(),
        "/intro": ((context) => IntroPage()),
        "/main": (context) => const HomeScreen(),
        "/listviewitem":(context) => const ListViewItem(),
        "/editprofile":(context) => const EditProfile()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SFdisplay',
      ),
    );
  }
}
