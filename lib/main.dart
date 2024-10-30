import 'package:flutter/material.dart';
// import 'package:assignment_demo/screens/about_me.dart';
// import 'package:assignment_demo/screens/home_screen.dart';
// Updated import statements to reflect the new package name 'unit_7_assignment_bautista'
// I did the same in the other dart files
import 'package:unit_7_assignment_bautista/screens/about_me.dart';
import 'package:unit_7_assignment_bautista/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor:
              Colors.grey[50]), // I added background color to match the sample
      // Create the routes here
      // 2. Setting the initial route to load the home screen
      initialRoute: '/',
      // 2. Defining the routes for navigation between screens
      routes: {
        '/': (context) => const HomScreen(), // Home screen route
        '/about_me': (context) => const About_Me(), // About Me screen route
      },
    );
  }
}
