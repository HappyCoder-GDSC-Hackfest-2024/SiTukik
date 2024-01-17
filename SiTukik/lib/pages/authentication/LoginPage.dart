import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:penyukita/pages/DashboardPage.dart';
import './RegistrationPage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isButtonDisabled = true;

  @override
  void initState() {
    super.initState();

    // Menggunakan listener untuk memantau perubahan pada kedua input
    emailController.addListener(enableLoginButton);
    passwordController.addListener(enableLoginButton);
  }

  // Fungsi untuk mengaktifkan atau menonaktifkan tombol login berdasarkan kondisi input
  void enableLoginButton() {
    setState(() {
      isButtonDisabled =
          emailController.text.isEmpty || passwordController.text.isEmpty;
    });
  }

  Future<void> login(BuildContext context) async {
    String ApiUrl = dotenv.env['API_URL'] ?? 'http://localhost:3000';

    final response = await http.post(
      Uri.parse('$ApiUrl/login'),
      headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      },
      body: jsonEncode({
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      // Login berhasil, pindah ke halaman dashboard
      print('Login berhasil');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => DashboardPage()));
    } else {
      // Login gagal, tampilkan pesan kesalahan
      print('Login gagal');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login gagal. Cek kembali email dan password Anda.'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: ("Masukan Username"), //hint text
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal), //hint text style
                  hintMaxLines: 2, //hint text maximum lines
                  hintTextDirection:
                      TextDirection.ltr //hint text direction, current is LTR
                  ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  hintText: ("Masukan Password"), //hint text
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal), //hint text style
                  hintMaxLines: 2, //hint text maximum lines
                  hintTextDirection:
                      TextDirection.ltr //hint text direction, current is LTR
                  ),
            ),
            SizedBox(
              height: 20,
              width: 100,
            ),
            ElevatedButton(
              onPressed: isButtonDisabled ? null : () => login(context),
              child: Text('Login'),
            ),
            // SizedBox(height: 30),
            // Center(
            //     child: ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => RegistrationPage()),
            //     );
            //   },
            //   child: Text('Registration'),
            // ))
          ],
        ),
      ),
    );
  }
}
