import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data profil Anda
    Map<String, String> profileInfo = {
      'nama': 'Zheand Rizky Pranasyach',
      'ttl': 'Sidoarjo, 5 Januari 2004',
      'alamat':
          'Jl. Sono Indah Utara 3 Rt.04, Rw.05, Sidokerto, Buduran, Sidoarjo',
      'no_hp': '08993326813',
      'email': 'zheandrizky@gmail.com',
      'github': 'https://github.com/zheandrizky',
      'pendidikan': 'SD,SMP, SMA',
      'penghargaan': 'Juara Banjari Tingkat Kecamatan',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile/me.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    profileInfo['nama']!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildInfoCard(
                context, Icons.calendar_today, 'TTL', profileInfo['ttl']!),
            _buildInfoCard(
                context, Icons.home, 'Alamat', profileInfo['alamat']!),
            _buildInfoCard(
                context, Icons.phone, 'No. HP', profileInfo['no_hp']!),
            _buildInfoCardWithLink(
                context, Icons.email, 'Email', profileInfo['email']!),
            _buildInfoCardWithLink(
                context, Icons.link, 'Profil Github', profileInfo['github']!),
            _buildEducationCard(context, profileInfo['pendidikan']!),
            _buildInfoCard(context, Icons.star, 'Penghargaan',
                profileInfo['penghargaan']!),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      BuildContext context, IconData icon, String label, String value) {
    return Container(
      width: MediaQuery.of(context).size.width, // Menyesuaikan lebar layar
      child: Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label + ":",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(value),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCardWithLink(
      BuildContext context, IconData icon, String label, String value) {
    return Container(
      width: MediaQuery.of(context).size.width, // Menyesuaikan lebar layar
      child: Card(
        elevation: 3,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label + ":",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        if (label == 'Email') {
                          _launchEmail(value); // Panggil fungsi _launchEmail
                        } else {
                          _launchURL(value);
                        }
                      },
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationCard(BuildContext context, String educationInfo) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.school,
                  size: 24,
                ),
                SizedBox(width: 10),
                Text(
                  'Riwayat Pendidikan:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            _buildEducationTile(context, 'SD', 'SDN Sidokerto', '2010 - 2016'),
            _buildEducationTile(
                context, 'SMP', 'SMP Negeri 5 Sidoarjo', '2016 - 2019'),
            _buildEducationTile(
                context, 'SMA', 'SMK Antartika 2 Sidoarjo', '2019 - 2022'),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationTile(
      BuildContext context, String level, String name, String year) {
    return ExpansionTile(
      title: Text(
        level,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: Icon(
        Icons.school,
        size: 24,
      ),
      children: [
        ListTile(
          title: Text(name),
          subtitle: Text(year),
        ),
      ],
    );
  }

  // Fungsi untuk membuka tautan Github
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Fungsi untuk membuka email
  void _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }
}
