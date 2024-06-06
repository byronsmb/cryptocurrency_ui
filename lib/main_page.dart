import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.getThemeMode});
  //final ThemeMode themeMode;
  final void Function(ThemeMode) getThemeMode;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isDark = false;
  void toggleSwitch(bool value) {
    setState(() {
      isDark = !isDark;
      if (isDark) {
        widget.getThemeMode(ThemeMode.light);
      } else {
        widget.getThemeMode(ThemeMode.dark);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), actions: [
        Switch(
          value: isDark,
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
          crossAxisCount: 2, 
          mainAxisSpacing: 20.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
          childAspectRatio: 4 / 5,
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: 4, // total number of items
        itemBuilder: (context, index) {
          return Stack(children: [
            Container(
              height: 250,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Card(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Text("Bitcoin"),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 0,
                //left: 75,
                child: Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    //color: Colors.red,
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/5968/5968260.png",
                      width: 50,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ))
          ]);
        },
      ),
    );
  }
}
