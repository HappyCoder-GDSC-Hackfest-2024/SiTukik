import 'package:flutter/material.dart';
import 'Authentication/LoginPage.dart';
// import './DashboardPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SiTukik',
          style: TextStyle(
            color: Colors.white, // Set warna teks putih
          ),
        ),
        backgroundColor: Color(0xFF00A9FF),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Selamat datang di SiTukik',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Lestarikan Tukik!',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Center(
                child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Login'),
            ))
          ],
        ),
      ),
    );
  }
}
