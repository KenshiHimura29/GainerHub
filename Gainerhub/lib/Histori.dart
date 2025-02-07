import 'package:flutter/material.dart';

class PurchaseHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Purchase History",
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
        child: ListView.builder(
          itemCount: 5, // Example number of past purchases
          itemBuilder: (context, index) {
            return _buildPurchaseItem(context, index);
          },
        ),
      ),
    );
  }

  // Method to display each purchase item
  Widget _buildPurchaseItem(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Icon(Icons.shopping_cart, size: 32, color: Colors.blue),
        title: Text(
          "Purchase #${index + 1}",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text("Total: Rp. ${500000 + (index * 10000)}"),
        trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {
          // Handle tap for more details on the specific purchase if needed
        },
      ),
    );
  }
}
