import 'dart:html';

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
              
                title: "Add Expence",
                content: Container(
                  height: 100,
                  width: 100,
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Item',
                              border: OutlineInputBorder(),
                              hintText: 'Enter a Item'),
                        ),
                        TextFormField(),
                        TextFormField(),
                        TextFormField(),
                        TextFormField(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text("Add Expence"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
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
