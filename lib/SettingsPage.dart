import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/theme_manager.dart';
import '../services/language_manager.dart';
import '../screens/profile_screen.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          Consumer<ThemeNotifier>(
            builder: (context, notifier, child) {
              return SwitchListTile(
                title: Text('Dark Mode'),
                value: notifier.getTheme() == notifier.darkTheme,
                onChanged: (value) {
                  if (value) {
                    notifier.setDarkMode();
                  } else {
                    notifier.setLightMode();
                  }
                },
              );
            },
          ),
          ListTile(
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: context.watch<LanguageNotifier>().getLanguage(),
              items: [
                DropdownMenuItem(
                  child: Text('English'),
                  value: 'en',
                ),
                DropdownMenuItem(
                  child: Text('Spanish'),
                  value: 'es',
                ),
              ],
              onChanged: (value) {
                context.read<LanguageNotifier>().changeLanguage(value!);
              },
            ),
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Sign Out'),
            onTap: () {
              // handle sign out logic
            },
          ),
        ],
      ),
    );
  }
}