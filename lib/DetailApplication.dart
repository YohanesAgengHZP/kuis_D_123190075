import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

class DetailAplikasi extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;
  
  const DetailAplikasi({Key? key,
  required this.nama,
  required this.gambar,
  required this.deskripsi})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade100,
        title: const Text('Detail Aplikasi'),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            isiaplikasi(),
            deskripsiaplikasi(),
            buildButton(),
          ],
        )
      )
    );
  }
  
  Widget isiaplikasi(){
    return InkWell(
      onTap: () {},
      child: Card(
          clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(gambar, width: 120),
            const Padding(
                padding: EdgeInsets.all(20)
            ),
            Text(
              nama,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deskripsiaplikasi() {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        top: 20,
        right: 40,
        bottom: 20,
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Text(deskripsi),
        ],
      ),
    );
  }

  Widget buildButton(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('test'),
        child: Text(
          'Go To Appstore',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  }
