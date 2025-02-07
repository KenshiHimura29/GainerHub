import 'package:flutter/material.dart';

class ThemeSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Settings"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Theme",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.brightness_5, color: Colors.orange),
              title: Text("Light Theme"),
              trailing: Icon(Icons.check_circle, color: Colors.green),
              onTap: () {
                // Logic to apply Light Theme
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Light theme selected"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_2, color: Colors.blueGrey),
              title: Text("Dark Theme"),
              trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
              onTap: () {
                // Logic to apply Dark Theme
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Dark theme selected"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}