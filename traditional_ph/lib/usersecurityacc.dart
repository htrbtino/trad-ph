import 'package:flutter/material.dart';

class SecurityAccountScreen extends StatelessWidget {
  const SecurityAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Adjust image sizes relative to screen size
    double iconSize = screenWidth * 0.1;  // 10% of screen width for icons
    double imageHeight = screenHeight * 0.15;  // 15% of screen height for the top image
    double midIconSize = screenWidth * 0.2;  // 20% of screen width for midicon

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            // Positioned christmasballs image (adjusted size)
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/christmasballs.png', // Path to your image
                height: imageHeight,  // Dynamic size
                fit: BoxFit.cover, // Adjust the fit to cover the screen area
              ),
            ),

            // Positioned icontop.png at the top left corner, same as christmasballs.png
            Positioned(
              top: 25, // Positioned at the top, aligned with christmasballs image
              left: 5,  // Aligned to the left edge
              child: Image.asset(
                'assets/images/icontop.png',  // Path to your icon image
                width: iconSize,  // Dynamic width based on screen width
                height: iconSize, // Dynamic height based on screen width
                fit: BoxFit.contain, // Ensure the image scales without distortion
              ),
            ),

            // Back Button aligned with SECURITY ACCOUNT Row, positioned top-right below christmasballs image
            Positioned(
              top: imageHeight + 10, // Position just below the Christmas image
              right: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.brown, size: 30),
                onPressed: () {
                  Navigator.pop(context); // Navigate back
                },
              ),
            ),

            // Positioned "Hi, Lia!" and "Good day!" text
            Positioned(
              top: 23, // Adjust this to your desired top position
              left: 45, // Adjust this to your desired left position
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi, Lia!',
                    style: TextStyle(
                      fontFamily: 'Caladea',
                      fontSize: 23,  // Reduced font size
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  Text(
                    'Good day!',
                    style: TextStyle(
                      fontFamily: 'Caladea',
                      fontSize: 16,  // Reduced font size
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),

            // Content below the image
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Add spacing here to bring down the "SECURITY ACCOUNT" header
                const SizedBox(height: 140), // Space between Christmas balls image and header

                // "SECURITY ACCOUNT" header with new color
                const Row(
                  children: [
                    SizedBox(width: 10), // Just space, no icon needed here
                    Text(
                      'SECURITY ACCOUNT',
                      style: TextStyle(
                        fontFamily: 'Caladea',
                        fontSize: 20,  // Reduced font size
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4F2C1D), // Updated brown color
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                // Account Info Form with gray background
                Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Slight gray background
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Add midicon.png image at the top of the form
                      Center(
                        child: Image.asset(
                          'assets/images/midicon.png', // Path to midicon.png
                          width: midIconSize, // Size based on screen width
                          height: midIconSize, // Size based on screen width
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 40), // Add space after image

                      // Name label and text field
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontFamily: 'Caladea',
                          fontSize: 16,  // Reduced font size for label
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F2C1D), // Red color
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                          hintStyle: TextStyle(color: Colors.grey), // Set hint text color to gray
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none, // No border
                          ),
                          filled: true, // Makes the background white
                          fillColor: Colors.white, // Set background to white (No transparency)
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),  // Reduced padding
                        ),
                      ),
                      const SizedBox(height: 12),  // Reduced height between fields

                      // ID NO label and text field
                      const Text(
                        'ID NO',
                        style: TextStyle(
                          fontFamily: 'Caladea',
                          fontSize: 16,  // Reduced font size for label
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F2C1D), // Red color
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your ID',
                          hintStyle: TextStyle(color: Colors.grey), // Set hint text color to gray
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none, // No border
                          ),
                          filled: true, // Makes the background white
                          fillColor: Colors.white, // Set background to white (No transparency)
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),  // Reduced padding
                        ),
                      ),
                      const SizedBox(height: 12),  // Reduced height between fields

                      // Email label and text field
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontFamily: 'Caladea',
                          fontSize: 16,  // Reduced font size for label
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F2C1D), // Red color
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(color: Colors.grey), // Set hint text color to gray
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none, // No border
                          ),
                          filled: true, // Makes the background white
                          fillColor: Colors.white, // Set background to white (No transparency)
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),  // Reduced padding
                        ),
                      ),
                      const SizedBox(height: 12),  // Reduced height between fields

                      // Password label and text field
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Caladea',
                          fontSize: 16,  // Reduced font size for label
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4F2C1D), // Red color
                        ),
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.grey), // Set hint text color to gray
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide.none, // No border
                          ),
                          filled: true, // Makes the background white
                          fillColor: Colors.white, // Set background to white (No transparency)
                          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),  // Reduced padding
                        ),
                      ),
                      const SizedBox(height: 12),  // Reduced height between fields

                      // Forgot password button
                      TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        child: const Text(
                          'Forgot your password?',
                          style: TextStyle(
                            fontFamily: 'Caladea',
                            fontSize: 12,  // Smaller size for button
                            color: Color(0xFF4F2C1D), // Same color as Confirm Password
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
