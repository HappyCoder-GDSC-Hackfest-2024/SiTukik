import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'BankTransferPage.dart';

class MakeMemoriesPage extends StatefulWidget {
  @override
  _MakeMemoriesPageState createState() => _MakeMemoriesPageState();
}

class _MakeMemoriesPageState extends State<MakeMemoriesPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController numberOfTukikController = TextEditingController();
  bool isButtonDisabled = true;

  @override
  void initState() {
    super.initState();

    // Menggunakan listener untuk memantau perubahan pada input
    nameController.addListener(enableSubmitButton);
    addressController.addListener(enableSubmitButton);
    dateController.addListener(enableSubmitButton);
    numberOfTukikController.addListener(enableSubmitButton);
  }

  // Fungsi untuk mengaktifkan atau menonaktifkan tombol submit berdasarkan kondisi input
  void enableSubmitButton() {
    setState(() {
      isButtonDisabled = nameController.text.isEmpty ||
          addressController.text.isEmpty ||
          dateController.text.isEmpty ||
          numberOfTukikController.text.isEmpty;
    });
  }

  Future<void> submitForm(BuildContext context) async {
    String apiUrl =
        dotenv.env['API_URL'] ?? 'http://localhost:3000/api/make-memories';

    try {
      final response = await http.post(
        Uri.parse('$apiUrl/api/make-memories'),
        headers: {
          "Access-Control-Allow-Origin": "*",
          'Content-Type': 'application/json',
          'Accept': '*/*'
        },
        body: jsonEncode({
          'name': nameController.text,
          'address': addressController.text,
          'date': dateController.text,
          'numberOfTukik': numberOfTukikController.text,
        }),
      );

      if (response.statusCode == 200) {
        // Pengiriman formulir berhasil, pindah ke halaman dashboard atau tampilkan pesan sukses
        print('Formulir terkirim');
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => BankTransferPage()));
      } else {
        // Pengiriman formulir gagal, tampilkan pesan kesalahan
        print('Gagal mengirim formulir');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal mengirim formulir. Cek kembali input Anda.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    } catch (error) {
      // Tangkap kesalahan yang mungkin terjadi saat mengakses API
      print('Error accessing API: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Website sedang maintenance. Silakan coba lagi nanti.'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buat Kenangan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0, // Ukuran teks sedang
            fontWeight: FontWeight.bold, // Teks bold
          ),
        ),
        centerTitle: true, // Title ditengah
        iconTheme: IconThemeData(
          color: Colors.white, // Warna tombol back putih
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Menggeser formulir ke kiri
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Masukkan Nama",
                hintStyle: TextStyle(fontSize: 14.0), // Ukuran placeholder
              ),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                icon: Icon(Icons.location_on),
                hintText: "Masukkan Alamat Domisili",
                hintStyle: TextStyle(fontSize: 14.0), // Ukuran placeholder
              ),
            ),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                icon: Icon(Icons.date_range),
                hintText: "Masukkan Tanggal Kenangan (Format: YYYY-MM-DD)",
                hintStyle: TextStyle(fontSize: 14.0), // Ukuran placeholder
              ),
            ),
            TextField(
              controller: numberOfTukikController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.filter_alt),
                hintText: "Masukkan Jumlah Tukik",
                hintStyle: TextStyle(fontSize: 14.0), // Ukuran placeholder
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isButtonDisabled
                  ? null
                  : () {
                      submitForm(context);
                      // Navigasi ke halaman BankTransferPage setelah berhasil mengirim formulir
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BankTransferPage()),
                      );
                    },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 169, 225),
                minimumSize: Size(double.infinity, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
