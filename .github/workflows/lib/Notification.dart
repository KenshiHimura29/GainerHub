import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      "title": "New Offer!",
      "message": "Get 50% off on your next purchase.",
      "time": "2 mins ago"
    },
    {
      "title": "Reminder",
      "message": "Your subscription will expire soon.",
      "time": "1 hour ago"
    },
    {
      "title": "Update",
      "message": "Check out our new features in the app!",
      "time": "Yesterday"
    },
    {
      "title": "Welcome!",
      "message": "Thank you for joining our community!",
      "time": "2 days ago"
    },
    {
      "title": "Achievement Unlocked!",
      "message": "You just reached Level 5. Keep going!",
      "time": "3 days ago"
    },
    {
      "title": "Survey Invitation",
      "message": "Share your feedback and win rewards!",
      "time": "4 days ago"
    },
    {
      "title": "Event Alert",
      "message": "Don't miss our live event this Friday.",
      "time": "5 days ago"
    },
    {
      "title": "System Update",
      "message": "Version 2.0 is now available. Update your app!",
      "time": "1 week ago"
    },
    {
      "title": "Limited Time Deal",
      "message": "Flash sale starts now. Grab your favorites!",
      "time": "1 week ago"
    },
    {
      "title": "Thank You!",
      "message": "We appreciate your continued support.",
      "time": "2 weeks ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff3a57e8),
      ),
      body: notifications.isNotEmpty
          ? ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff3a57e8),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      notifications[index]['title']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notifications[index]['message']!,
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Text(
                          notifications[index]['time']!,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off,
                    size: 50,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "No notifications yet!",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
