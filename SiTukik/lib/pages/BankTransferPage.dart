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
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                });
              },
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar tombol putih
                  border: Border.all(
                    color: isCollapsed
                        ? Colors.black
                        : Colors.blue, // Warna outline sesuai kondisi
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          isCollapsed
                              ? Icons.check_circle_outline
                              : Icons.check_circle,
                          color: isCollapsed ? Colors.black : Colors.blue,
                        ),
                        Text(
                          'Transfer Bank BNI',
                          style: TextStyle(
                            color: isCollapsed
                                ? Colors.black
                                : Colors.blue, // Warna teks sesuai kondisi
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      isCollapsed ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: isCollapsed
                          ? Colors.black
                          : Colors.blue, // Warna ikon sesuai kondisi
                    ),
                  ],
                ),
              ),
            ),
            if (!isCollapsed) ...[
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar belakang box
                  borderRadius:
                      BorderRadius.circular(12.0), // Bentuk semi rounded
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BNI',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '1000000000',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 5), // Spasi antara teks
                        Text(
                          'a/n: SiTukik',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    // tambahkan field lainnya sesuai kebutuhan
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
