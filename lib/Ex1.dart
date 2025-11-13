import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Define MyApp 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('My Hobbie'),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
             
  HobbyCard(
            icon: Icons.travel_explore,
            label: 'Traveling',
            backgroundColor: Color.fromARGB(255, 2, 180, 41),
              ),
   SizedBox(height: 10),
   HobbyCard(
           label: 'Skating',
           icon: Icons.skateboarding,
           backgroundColor: Color.fromARGB(255, 63, 134, 192),
              ),
              SizedBox(height: 10),
              HobbyCard(
                label: 'race',
                icon: Icons.directions_car, 
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ),
      ), // Closes Scaffold
    ); // Closes MaterialApp and ends the return statement
  } // Closes the build method
}

//  HobbyCard widget
class HobbyCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;

  const HobbyCard({
    super.key,
    required this.label,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      margin: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
         child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            
            child: Icon(icon, size: 25, color: Colors.white),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}