import 'package:flutter/material.dart';

class SettingsMain extends StatefulWidget {
  @override
  _SettingsMainState createState() => _SettingsMainState();
}

class _SettingsMainState extends State<SettingsMain> {
  bool _isDarkMode = false;
  bool _isItalicFont = false;

  void _toggleDarkMode(bool newValue) {
    setState(() {
      _isDarkMode = newValue;
      // Set app-wide dark mode
      MyApp.of(context).setDarkMode(newValue);
    });
  }

  void _toggleFontStyle() {
    setState(() {
      _isItalicFont = !_isItalicFont;
    });
  }

  void _navigateToProfile() {
    // Navigation logic to profile screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/musicicon.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Dark Mode',
              style: TextStyle(fontSize: 20.0, color: _isDarkMode ? Colors.white : Colors.black), // Change text color based on dark mode
            ),
            Switch(
              value: _isDarkMode,
              onChanged: _toggleDarkMode,
            ),
            SizedBox(height: 20.0),
            Text(
              'Text Font',
              style: TextStyle(fontSize: 20.0, color: _isDarkMode ? Colors.white : Colors.black), // Change text color based on dark mode
            ),
            TextButton(
              onPressed: _toggleFontStyle,
              child: Text(
                _isItalicFont ? 'Normal Font' : 'Italic Font',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                  fontStyle: _isItalicFont ? FontStyle.normal : FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _navigateToProfile,
              child: Text(
                'Go to Profile',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: _isDarkMode ? Colors.white : Colors.blue, // Change button color based on dark mode
                onPrimary: _isDarkMode ? Colors.black : Colors.white, // Change text color based on dark mode
              ),
            ),
          ],
        ),
      ),
      backgroundColor: _isDarkMode ? Colors.black : Colors.white, // Set background color based on dark mode
    );
  }
}

// Example profile screen widget
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

// App widget with app-wide dark mode state
class MyApp extends StatefulWidget {
  final Widget child;

  MyApp({Key? key, required this.child}) : super(key: key);

  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>()!;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void setDarkMode(bool isDarkMode) {
    setState(() {
      _isDarkMode = isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: widget.child,
    );
  }
}

void main() {
  runApp(MyApp(child: SettingsMain()));
}
