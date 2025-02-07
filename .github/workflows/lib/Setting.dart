import 'package:flutter/material.dart';
import 'package:flutterviz/Language.dart';
import 'package:flutterviz/Privacy.dart';
import 'package:flutterviz/Profile.dart';
import 'package:flutterviz/Theme.dart';

class SettingPage extends StatelessWidget {
  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("English"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                _navigateTo(context, LanguageSettingsPage());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Theme"),
              subtitle: Text("Light"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                _navigateTo(context, ThemeSettingsPage());
              },
            ),
            SizedBox(height: 20),
            Text(
              "Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              subtitle: Text("Edit your profile"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                _navigateTo(context, Profile());
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Privacy"),
              subtitle: Text("Manage privacy settings"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                _navigateTo(context, PrivacySettingsPage());
              },
            ),
            SizedBox(height: 20),
            Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text("Push Notifications"),
              subtitle: Text("Enable or disable notifications"),
              value: true,
              onChanged: (bool value) {
                // Handle toggle logic for Push Notifications
              },
            ),
            SwitchListTile(
              title: Text("Email Notifications"),
              subtitle: Text("Receive updates via email"),
              value: false,
              onChanged: (bool value) {
                // Handle toggle logic for Email Notifications
              },
            ),
          ],
        ),
      ),
    );
  }
}

