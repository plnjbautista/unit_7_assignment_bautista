import 'package:flutter/material.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text("Gesture and Navigation"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This is supposed to be a Home Screen"),
          SizedBox(height: 20),

          // INSERT CODE BELOW
          // 3. Adding a ElevatedButton to navigate to the About Me screen
          ElevatedButton(
              onPressed: () {
                // 3. onPressed property
                // Navigate to the About Me screen when button is pressed
                Navigator.pushNamed(context, '/about_me');
              },
              child: Text("Go to About Me"), // Button label text
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)))),
        ],
      ),
    );
  }
}
