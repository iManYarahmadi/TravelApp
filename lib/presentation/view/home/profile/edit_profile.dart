import 'package:flutter/material.dart';

import 'package:travelapp/config/constants.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.navigate_before,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          }),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/iman.jpg"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Iman ",
                  style: TextStyle(fontSize: 30, fontFamily: "gillsans"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Edit Profile Picture ",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "gillsans",
                      color: activeColorIndicator),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "gillsans",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextForm(
                  hintText: "Iman",
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "gillsans",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextForm(
                  hintText: "Yarahmadi",
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "gillsans",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextForm(
                  hintText: "Iran",
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "gillsans",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextForm(
                  hintText: "0936123456",
                ),
              ],
            ),
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
              "Save",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'switzer'),
            ),
          )
        ]));
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    Key? key,
    this.hintText,
  }) : super(key: key);
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(right: 30, left: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: descriptionTextColor.withOpacity(.3)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: hintText),
          )),
    );
  }
}
