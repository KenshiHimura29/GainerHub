import 'package:flutter/material.dart';
import 'Password.dart'; // Pastikan file ini mengarah ke ChangePasswordPage

class PrivacySettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Settings"),
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
              "Privacy Settings",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.lock_outline, color: Colors.blue),
              title: Text("Change Password"),
              subtitle: Text("Update your account password securely"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePasswordPage()),
                );
              },
            ),
            Divider(),
            SwitchListTile(
              title: Text("Enable 2FA"),
              subtitle: Text("Add an extra layer of security to your account"),
              value: true,
              onChanged: (bool value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value
                        ? "Two-factor authentication enabled"
                        : "Two-factor authentication disabled"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
            Divider(),
            SwitchListTile(
              title: Text("Location Sharing"),
              subtitle: Text("Allow apps to access your location"),
              value: false,
              onChanged: (bool value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value
                        ? "Location sharing enabled"
                        : "Location sharing disabled"),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.delete_forever, color: Colors.red),
              title: Text("Delete Account"),
              subtitle: Text("Permanently delete your account"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Account Deletion Confirmation page
              },
            ),
            SizedBox(height: 20),
            Text(
              "Data Privacy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.green),
              title: Text("Privacy Policy"),
              subtitle: Text("Read our privacy policy"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Privacy Policy page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.security, color: Colors.blue),
              title: Text("Data Security"),
              subtitle: Text("Learn how we secure your data"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Data Security Information page
              },
            ),
          ],
        ),
      ),
    );
  }
}
