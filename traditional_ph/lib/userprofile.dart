import 'package:flutter/material.dart';
import 'usersecurityacc.dart'; // Correct import

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key}); // Use const for performance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(Icons.person, size: 40, color: Colors.brown),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hi, Lia!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    Text(
                      'Good day!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Profile Info
            Center(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    // Replace chef_icon.png with midicon.png
                    Image.asset('assets/images/midicon.png', width: 50, height: 50),
                    const SizedBox(height: 10),
                    const Text(
                      'Lia',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const Text(
                      'ID NO: 101',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Buttons
                    ListTile(
                      title: const Text('Security Account'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecurityAccountScreen()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('About Us'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle About Us action here
                      },
                    ),
                    ListTile(
                      title: const Text('Sign out'),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        // Handle Sign out action here
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}
