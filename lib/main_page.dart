import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.themeMode});
  final ThemeMode themeMode;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSelected = false;
  void toggleSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), actions: [
        Switch(
          value: isSelected,
          onChanged: toggleSwitch,
          activeColor: Colors.orange,
          activeThumbImage: NetworkImage(
              "https://cdn-icons-png.freepik.com/512/6661/6661565.png"),
          inactiveThumbImage: NetworkImage(
              'https://cdn.icon-icons.com/icons2/1709/PNG/512/moon_112461.png'),
        )
      ]),
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
          return Stack(
            children: [
              Card(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Text("Bitcoin"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
