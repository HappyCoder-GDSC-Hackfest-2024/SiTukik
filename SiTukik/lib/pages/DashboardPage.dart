import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di Dashboard!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika atau navigasi sesuai kebutuhan
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
