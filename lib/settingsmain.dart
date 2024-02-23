import 'package:flutter/material.dart';
import 'musicanimation.dart'; // Import the music page file

class SettingsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MusicAnimationPage()), // Navigate to the music animation page
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Your settings UI here
            GestureDetector(
              onTap: _navigateToProfileScreen,
              child: Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/user.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Dark Mode',
              style: TextStyle(fontSize: 20.0),
            ),
            Switch(
              value: false, // Assuming default is false
              onChanged: (value) {}, // Assuming you have a function for toggling dark mode
            ),
            SizedBox(height: 20.0),
            Text(
              'Text Font',
              style: TextStyle(fontSize: 20.0),
            ),
            TextButton(
              onPressed: () {}, // Assuming you have a function for toggling font style
              child: Text(
                'Italic Font',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {}, // Assuming you have a function for navigating to profile
              child: Text(
                'Go to Profile',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToProfileScreen() {
    // Navigation logic to profile screen
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsMain(),
  ));
}
