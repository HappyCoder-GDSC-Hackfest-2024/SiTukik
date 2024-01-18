import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './MakeMemoriesPage.dart';

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MakeMemoriesPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue, // Warna garis tepi
                      ),
                      elevation: 4.0,
                      // Ketebalan bayangan
                      padding:
                          EdgeInsets.all(20.0), // Sesuaikan dengan kebutuhan
                    ),
                    child: Icon(
                      Icons.article,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 2
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue, // Warna garis tepi
                      ),
                      elevation: 4.0,
                      // Ketebalan bayangan
                      padding:
                          EdgeInsets.all(20.0), // Sesuaikan dengan kebutuhan
                    ),
                    child: Icon(
                      Icons.history,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 1
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue, // Warna garis tepi
                      ),
                      elevation: 4.0,
                      // Ketebalan bayangan
                      padding:
                          EdgeInsets.all(20.0), // Sesuaikan dengan kebutuhan
                    ),
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),

                  // Button 1
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika atau navigasi sesuai kebutuhan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Warna latar belakang
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      side: BorderSide(
                        color: Colors.blue, // Warna garis tepi
                      ),
                      elevation: 4.0,
                      // Ketebalan bayangan
                      padding:
                          EdgeInsets.all(20.0), // Sesuaikan dengan kebutuhan
                    ),
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.blue, // Warna ikon
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16.0), // Jarak antara button dan teks

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Menu 1
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Buat Kenangan',
                          style: TextStyle(
                            color: Colors.black54, // Warna teks
                            fontSize: 10.0, // Sesuaikan dengan kebutuhan
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Menu 2
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Riwayat Kenangan',
                          style: TextStyle(
                            color: Colors.black54, // Warna teks
                            fontSize: 10.0, // Sesuaikan dengan kebutuhan
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Menu 3
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Soon',
                          style: TextStyle(
                            color: Colors.black54, // Warna teks
                            fontSize: 10.0, // Sesuaikan dengan kebutuhan
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Menu 4
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Soon',
                          style: TextStyle(
                            color: Colors.black54, // Warna teks
                            fontSize: 10.0, // Sesuaikan dengan kebutuhan
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
