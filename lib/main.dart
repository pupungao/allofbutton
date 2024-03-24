import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade700),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Expanded(
            child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  child: Text(
                    "Button 1",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 0,
                  ),
                  onPressed: () {},
                ),
                OutlinedButton(
                  child: Text(
                    "Button 2",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    side: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("3"),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 40,
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                GFButton(
                  onPressed: () {},
                  text: "Solid Button1",
                  blockButton: true,
                ),
              ],
            ),
            Row(
              children: [
                GFButton(
                  onPressed: () {},
                  text: "Solid Button2",
                ),
                GFButton(
                  onPressed: null,
                  text: "GF Button1",
                ),
                GFButton(
                  onPressed: () {},
                  text: "Pill Button1",
                  shape: GFButtonShape.pills,
                ),
                GFButton(
                  onPressed: () {},
                  text: "Pill Button2",
                  shape: GFButtonShape.square,
                ),
              ],
            ),
            Row(
              children: [
                GFButton(
                  onPressed: () {},
                  text: "Icon Text",
                  icon: Icon(Icons.home),
                ),
                GFIconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                GFButton(
                  onPressed: () {},
                  text: "Social Text",
                  icon: Icon(Icons.facebook),
                ),
                GFIconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
