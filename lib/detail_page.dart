import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  //required artinya paramter wajib diisi saat dipanggil di halaman lain
  DetailPage({required this.nbi, required this.nama});

  String nbi;
  String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //menampilkan nama
          Text(nbi),
          //menampilkan alamat
          Text(nama)
        ],
      )),
    );
  }
}
