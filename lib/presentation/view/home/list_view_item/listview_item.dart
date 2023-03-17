import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp/model/destination_model.dart';

import '../../../../config/route/scale_route.dart';
import '../../deatails/details_screen.dart';
import 'listview_itemcard.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "All Places",
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
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: destination.length,
          itemBuilder: (context, item) {
            final des = destination[item];
            return ListViewItemCard(
                image: 'assets/images/${des.image}',
                name: '${des.name}',
                location: '${des.location}',
                onpress: () {
                  Navigator.push(context, ScaleRoute(page: DetailsScreen(des: des,)));
                });
          }),
    );
  }
}
