import 'package:app/screens/details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            InkWell(
              child: Card(
                child: ListTile(
                  title: Text('Gopal Expence'),
                  subtitle: Text('description........'),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
