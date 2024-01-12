import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> register() async {
    final response = await http.post(
      Uri.parse('http://localhost:3000/register'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': '*/*',
      },
      body: jsonEncode({
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 201) {
      print('Registrasi berhasil');
      // Tambahkan logika navigasi atau respons sesuai kebutuhan
    } else {
      print('Registrasi gagal');
      // Tambahkan logika penanganan kesalahan
    }
  }

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
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
