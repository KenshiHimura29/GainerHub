import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart'; // Package untuk berbagi

class TellYourFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Tell Your Friends",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Invite Your Friends",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Share this app with your friends and let them enjoy the benefits!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                _shareApp(context);
              },
              icon: Icon(Icons.share, color: Colors.white),
              label: Text(
                "Share Now",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Perbaikan
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Or copy the link below and share it directly:",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "https://myapp.example.com/invite",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.copy, color: Colors.grey),
                    onPressed: () {
                      _copyToClipboard(context, "https://myapp.example.com/invite");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _shareApp(BuildContext context) {
    final String shareText =
        "Check out this amazing app! Download now and enjoy the features: https://myapp.example.com/invite";
    Share.share(shareText);
  }

  void _copyToClipboard(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text("Link copied to clipboard!"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
