import 'package:flutter/material.dart';
import 'package:unit_7_assignment_bautista/components/tab_widget_1.dart';
import 'package:unit_7_assignment_bautista/components/tab_widget_2.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView

    // 4. Completing the DefaultTabController to manage the state of the tabs
    return DefaultTabController(
      length: 2, // Specifying the number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: Text(
              "Hi!"), // Setting the title of the AppBar, following the example
          bottom: TabBar(
            // Defining the tabs with icons and labels
            tabs: [
              Tab(
                icon: Icon(
                  Icons.contact_emergency_sharp,
                  color: Colors.white,
                ),
              ),
              Tab(
                  icon: Icon(
                Icons.settings,
                color: Colors.white,
              )),
            ],
          ),
        ),
        body: TabBarView(
          // Defining the views or screen of the tabs
          children: [
            TabWidget1(), // Content for the first tab
            TabWidget2(), // Content for the second tab
          ],
        ),
      ),
    );
  }
}
