import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // 🔵 Top bar
            Container(
              height: 50,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 30,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    width: 50,
                    height: 30,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),

            // 🟢 + 🟠 Main body
            Expanded(
              child: Row(
                children: [
                  // Left green section
                  Container(
                    width: 100,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.white,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.white,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),

                  // Right orange section
                  Expanded(
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}