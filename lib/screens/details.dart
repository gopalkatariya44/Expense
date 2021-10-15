import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goapl data"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Comment Icon',
            onPressed: () {
              Get.defaultDialog(
                
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Text("okh then......"),
      ),
    );
  }
}
