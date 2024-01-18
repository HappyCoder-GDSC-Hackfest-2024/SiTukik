import 'package:flutter/material.dart';

class BankTransferPage extends StatefulWidget {
  @override
  _BankTransferPageState createState() => _BankTransferPageState();
}

class _BankTransferPageState extends State<BankTransferPage> {
  bool isCollapsed = true;

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Silahkan transfer ke sini',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Transfer Bank'),
                  Icon(isCollapsed
                      ? Icons.arrow_drop_down
                      : Icons.arrow_drop_up),
                ],
              ),
            ),
            if (!isCollapsed) ...[
              SizedBox(height: 10),
              Text(
                'Keterangan Pemilik Bank:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('Atas Nama: John Doe'),
              Text('Nomor Rekening: 1234567890'),
              // tambahkan field lainnya sesuai kebutuhan
            ],
          ],
        ),
      ),
    );
  }
}
