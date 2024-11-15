import 'package:flutter/material.dart';
import 'userprofile.dart'; // Import the userprofile.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking App',
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image positioned at the top and covering the entire screen
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/backround1.jfif', // Path to your background image
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height, // Full screen height
            ),
          ),
          // Content overlaid on top of the background image
          Center(
            child: Container(
              width: double.infinity, // Ensures it takes full width
              height: double.infinity, // Ensures it takes full height
              child: Stack(
                children: <Widget>[
                  // Position "TRADITIONAL" text at the top of the screen
                  Positioned(
                    top: 590, // Lowered "TRADITIONAL" a bit
                    left: 30,
                    right: 0,
                    child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Color(0xFF400000), Color(0xFFC13232)], // Custom gradient for "TRADITIONAL"
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ).createShader(bounds),
                      child: Text(
                        'TRADITIONAL',
                        style: TextStyle(
                          fontFamily: 'Caladea', // Use Caladea font family
                          fontWeight: FontWeight.bold, // Bold weight for "TRADITIONAL"
                          fontSize: 55,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Position "CHRISTMAS" text under "TRADITIONAL"
                  Positioned(
                    top: 640, // Adjusted to position under "TRADITIONAL"
                    left: 55,
                    right: 0,
                    child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Color(0xFF400000), Color(0xFFC13232)], // Custom gradient for "CHRISTMAS"
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Text(
                        'CHRISTMAS',
                        style: TextStyle(
                          fontFamily: 'Caladea', // Use Caladea font family
                          fontWeight: FontWeight.bold, // Bold weight for "CHRISTMAS"
                          fontSize: 55,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Position "RECIPES IN THE PHILIPPINES" text further down
                  Positioned(
                    top: 710, // Adjusted to position under "CHRISTMAS"
                    left: 85,
                    right: 0,
                    child: ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Color(0xFF400000), Color(0xFFC13232)], // Custom gradient for "RECIPES IN THE PHILIPPINES"
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Text(
                        'RECIPES IN THE PHILIPPINES',
                        style: TextStyle(
                          fontFamily: 'Caladea', // Use Caladea font family
                          fontWeight: FontWeight.normal, // Regular weight for "RECIPES IN THE PHILIPPINES"
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // Positioned button at the bottom
                  Positioned(
                    bottom: 50, // Position the button from the bottom
                    left: 50, // Adjust the left margin
                    right: 50, // Adjust the right margin
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF400000), Color(0xFFC13232)], // Custom gradient color
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfileScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent background to inherit gradient
                          minimumSize: Size(double.infinity, 80), // Full width button
                          shadowColor: Colors.transparent, // Remove shadow
                          foregroundColor: Colors.white, // Set the text color to white
                        ),
                        child: Text(
                          'Start Cooking',
                          style: TextStyle(
                            fontFamily: 'Caladea', // Use Caladea font for the button
                            fontWeight: FontWeight.normal, // Regular weight for "Start Cooking"
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
