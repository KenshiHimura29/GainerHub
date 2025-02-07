import 'package:flutter/material.dart';

class Transaksi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Address",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Road Name: Jl. Melati Indah No. 45\nTown: Desa Harapan\nSubdistrict: Sub. Sejahtera\nCity: Damai Town\nProvinsi: West Java\nKode Pos: 12345",
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),

              // Payment Methods Section
              Text(
                "Choose Delivery",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              _buildPaymentMethodTile(
                context,
                title: "J&T",
                subtitle: "Reliable and fast delivery service",
                icon: Icons.local_shipping,
                onTap: () {
                  _showPaymentDetails(context, "J&T");
                },
              ),
              _buildPaymentMethodTile(
                context,
                title: "JNE",
                subtitle: "Trusted delivery service",
                icon: Icons.local_shipping,
                onTap: () {
                  _showPaymentDetails(context, "JNE");
                },
              ),
              _buildPaymentMethodTile(
                context,
                title: "NINJA",
                subtitle: "Fast and efficient delivery",
                icon: Icons.local_shipping,
                onTap: () {
                  _showPaymentDetails(context, "NINJA");
                },
              ),
              Divider(height: 32, color: Colors.grey[300]),

              // Order Summary
              Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              _buildOrderSummary(),
              SizedBox(height: 32),

              // Confirm Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  _showConfirmationDialog(context);
                },
                child: Center(
                  child: Text(
                    "Confirm Checkout",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentMethodTile(BuildContext context,
      {required String title, required String subtitle, required IconData icon, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, size: 32, color: Colors.blue),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildOrderSummary() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _buildOrderDetailRow("Item Price", "Rp. 560,320"),
          SizedBox(height: 8),
          _buildOrderDetailRow("Additional Fees (Tax 2%)", "Rp. 3,032"),
          SizedBox(height: 8),
          _buildOrderDetailRow("Shipping Fee", "Rp. 20,000"),
          SizedBox(height: 8),
          Divider(color: Colors.grey[400]),
          SizedBox(height: 8),
          _buildOrderDetailRow("Total", "Rp. 636,352", isBold: true),
        ],
      ),
    );
  }

  Widget _buildOrderDetailRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: isBold ? Colors.blue : Colors.black,
          ),
        ),
      ],
    );
  }

  void _showPaymentDetails(BuildContext context, String method) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("$method Details"),
          content: Text("Details for $method delivery method will appear here."),
          actions: [
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirm Checkout"),
          content: Text("Are you sure you want to confirm the checkout?"),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text("Confirm"),
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Checkout confirmed!")),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
