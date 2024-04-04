import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdiDetail extends StatelessWidget {
  final Prodi prodi;

  ProdiDetail({required this.prodi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil ${prodi.name}'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar prodi dan nama prodi
            Center(
              child: Column(
                children: [
                  Image.asset(
                    prodi.image,
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 10),
                  Text(
                    prodi.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Tampilkan detail prodi menggunakan data dari 'prodi' instance
            Text(
              'Profil',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(prodi.profile),
            SizedBox(height: 20),
            Text(
              'Visi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(prodi.vision),
            SizedBox(height: 20),
            Text(
              'Misi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(prodi.mission),
            SizedBox(height: 20),
            Text(
              'Akreditasi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Akreditasi: ${prodi.accreditation}'),
            SizedBox(height: 20),
            Text(
              'Ketua Program Studi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(prodi.headOfStudy),
            SizedBox(height: 20),
            Text(
              'Dosen',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  prodi.lecturers.map((lecturer) => Text(lecturer)).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Website',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                launch(prodi.website);
              },
              child: Text(
                prodi.website,
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Prestasi Mahasiswa',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: prodi.achievements
                  .map((achievement) => Text(achievement))
                  .toList(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
