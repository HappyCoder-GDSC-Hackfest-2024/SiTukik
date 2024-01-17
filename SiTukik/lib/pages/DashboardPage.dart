import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String tanggal = DateFormat('EEE, dd MMMM yyyy').format(DateTime.now());

    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 40.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align ke kiri
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue, // Warna latar belakang box
                  borderRadius:
                      BorderRadius.circular(12.0), // Bentuk semi rounded
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'images/emojiperson.png', // Ganti dengan path sesuai lokasi file emoji.png
                      height: 72.0, // Sesuaikan dengan kebutuhan ukuran emoji
                      width: 72.0,
                    ),
                    SizedBox(width: 8.0), // Jarak antara emoji dan teks
                    Text(
                      'Hildan Kusto Utomo',
                      style: TextStyle(
                        color: Colors.white, // Warna teks putih
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0), // Jarak antara box dan teks jam/tanggal
              Row(
                children: [
                  Text(
                    tanggal,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0), // Jarak antara box dan teks jam/tanggal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button 1
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          bottomLeft: Radius.circular(12.0),
                        ),
                        side: BorderSide(
                          color: Colors.blue, // Warna garis tepi
                        ),
                      ),
                      elevation: 4.0, // Ketebalan bayangan
                    ),
                    child: Icon(
                      Icons.people,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 2
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                        side: BorderSide(
                          color: Colors.blue, // Warna garis tepi
                        ),
                      ),
                      elevation: 4.0, // Ketebalan bayangan
                    ),
                    child: Icon(
                      Icons.people,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 3
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.0),
                          bottomLeft: Radius.circular(12.0),
                        ),
                        side: BorderSide(
                          color: Colors.blue, // Warna garis tepi
                        ),
                      ),
                      elevation: 4.0, // Ketebalan bayangan
                    ),
                    child: Icon(
                      Icons.people,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 4
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                        side: BorderSide(
                          color: Colors.blue, // Warna garis tepi
                        ),
                      ),
                      elevation: 4.0, // Ketebalan bayangan
                    ),
                    child: Icon(
                      Icons.people,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
