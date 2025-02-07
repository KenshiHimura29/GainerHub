import 'package:flutter/material.dart';

class HelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help & Support"),
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
              "How can we help you?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.chat_bubble_outline, color: Colors.blue),
                title: Text("Live Chat"),
                subtitle: Text("Chat with our support team"),
                onTap: () {
                  // Navigate to Live Chat page or open chat
                },
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.email_outlined, color: Colors.green),
                title: Text("Email Us"),
                subtitle: Text("Get support via email"),
                onTap: () {
                  // Navigate to Email Support page or trigger email
                },
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.orange),
                title: Text("Call Us"),
                subtitle: Text("Speak with our support team"),
                onTap: () {
                  // Trigger a phone call
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Frequently Asked Questions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ExpansionTile(
              title: Text("How to reset my password?"),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("To reset your password, go to Settings > Account > Reset Password."),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("How to update my profile?"),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("To update your profile, go to Profile > Edit Profile and save changes."),
                ),
              ],
            ),
            ExpansionTile(
              title: Text("How to contact support?"),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("You can contact support via live chat, email, or phone."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
