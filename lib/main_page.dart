import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      backgroundColor: const Color.fromARGB(255, 48, 48, 48),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: 4, // total number of items
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue, // color of grid items
            child: Center(
              child: Text(
                "hola",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
