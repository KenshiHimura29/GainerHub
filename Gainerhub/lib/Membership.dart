import 'package:flutter/material.dart';

class MembershipPage extends StatelessWidget {
  final List<Map<String, dynamic>> membershipPlans = [
    {
      "name": "Basic",
      "price": "\$9.99/month",
      "features": ["Access to basic features", "Standard support"]
    },
    {
      "name": "Premium",
      "price": "\$19.99/month",
      "features": [
        "Access to all features",
        "Priority support",
        "Exclusive discounts"
      ]
    },
    {
      "name": "Pro",
      "price": "\$29.99/month",
      "features": [
        "Access to advanced features",
        "24/7 support",
        "Customizable options"
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Membership"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff3a57e8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose Your Plan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: membershipPlans.length,
                itemBuilder: (context, index) {
                  final plan = membershipPlans[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            plan['name'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3a57e8),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            plan['price'],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(height: 12),
                          ...plan['features'].map<Widget>((feature) {
                            return Row(
                              children: [
                                Icon(Icons.check, color: Colors.green, size: 20),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    feature,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                          SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              // Add functionality to subscribe to this plan
                            },
                            child: Text("Subscribe"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
