import 'package:flutter/material.dart';
import 'package:flutterviz/Histori.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Payment",
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
              // Display balance
              _buildBalanceDisplay(),

              SizedBox(height: 20),

              Text(
                "Choose a Payment Method",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),

              // Payment method options
              _buildPaymentMethodTile(
                context,
                title: "Bank Transfer",
                subtitle: "Pay directly via bank transfer",
                icon: Icons.account_balance,
                onTap: () {
                  _showPaymentDetails(context, "Bank Transfer");
                },
              ),
              _buildPaymentMethodTile(
                context,
                title: "Installments",
                subtitle: "Pay in installments (0% interest)",
                icon: Icons.credit_card,
                onTap: () {
                  _showPaymentDetails(context, "Installments");
                },
              ),
              _buildPaymentMethodTile(
                context,
                title: "E-Wallet",
                subtitle: "Use e-wallets like Gopay or OVO",
                icon: Icons.account_balance_wallet,
                onTap: () {
                  _showPaymentDetails(context, "E-Wallet");
                },
              ),
              _buildPaymentMethodTile(
                context,
                title: "Cash on Delivery",
                subtitle: "Pay with cash upon delivery",
                icon: Icons.delivery_dining,
                onTap: () {
                  _showPaymentDetails(context, "Cash on Delivery");
                },
              ),

              SizedBox(height: 32),

              // Histori Pembelian
              Text(
                "Purchase History",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),

              _buildHistoryTile(context),
            ],
          ),
        ),
      ),
    );
  }

  // Display balance information
  Widget _buildBalanceDisplay() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Your Balance",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "Rp. 1,000,000",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  // Payment method tile
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

  // History tile (Purchase History)
  Widget _buildHistoryTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.history, size: 32, color: Colors.blue),
      title: Text(
        "Purchase History",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      subtitle: Text("View your past purchases", style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Navigate to the complete purchase history page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PurchaseHistoryPage()),
        );
      },
    );
  }

  // Payment details dialog
  void _showPaymentDetails(BuildContext context, String method) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("$method Details"),
          content: Text("Details for $method payment method will appear here."),
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
}
