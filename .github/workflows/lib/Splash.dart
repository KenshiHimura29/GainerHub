import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart'; // Library untuk animasi loading
import 'Login.dart'; // Pastikan file Login diimport

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigasi otomatis ke halaman Login setelah 3 detik
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });

    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff3a57e8), Color(0xff282a36)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Logo dan teks
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo atau gambar
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Bodybuilder.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Nama aplikasi
                Text(
                  "GAINERHUB",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(height: 10),
                // Slogan
                Text(
                  "Your Muscle Gainer Solution",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 40),
                // Animasi loading
                SpinKitPulse(
                  color: Colors.white,
                  size: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
