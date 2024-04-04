import 'package:flutter/material.dart';
import 'prodi_detail.dart';
import 'profile.dart';
import 'package:url_launcher/url_launcher.dart';

class Prodi {
  final String name;
  final String image;
  final String profile;
  final String vision;
  final String mission;
  final String accreditation;
  final String headOfStudy;
  final List<String> lecturers;
  final String website;
  final List<String> achievements;

  Prodi({
    required this.name,
    required this.image,
    required this.profile,
    required this.vision,
    required this.mission,
    required this.accreditation,
    required this.headOfStudy,
    required this.lecturers,
    required this.website,
    required this.achievements,
  });
}

class HomeScreen extends StatelessWidget {
  // Model Prodi

  // Data dummy prodi
  final List<Prodi> prodiList = [
    // prodi ke 1
    Prodi(
      name: 'Kewirausahaan(S1)',
      image: 'assets/logo/ekonomi_pembangunan.jpg',
      profile: '''
Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.
''',
      vision:
          'Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.',
      mission: '''
1. Menyelenggarakan dan mengembangkan pendidikan di bidang kewirausahaan yang berbasis digital dan berkarakter bela negara.
2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat.
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.
4. Menyelenggarakan tata kelola yang baik dan bersih untuk mencapai akuntabilitas pengelolaan anggaran.
5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, kompetensi, dan manajerial.
6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.
''',
      accreditation: 'Baik',
      headOfStudy: 'Dr. Hesty Prima Rini, SE., MM',
      lecturers: [
        'Arief Budiman, S.AB., M.AB., CMA',
        'Devinta Nur Arumsari, S.E., M.E',
        'Egan Evanzha Yudha Amriel, S.Mn., MM',
        'Muhammad Ahmi Husein S.Si., M.Sc'
            'Muhammad Ilham Naufal, S.A, MBA'
      ],
      website: 'https://kwu.upnjatim.ac.id/',
      achievements: [
        '1. Medali perak di kompetisi NASPO (National Applied Science Project Olympiad) 2022',
        '2. Medali perunggu di kompetisi AISEEF (Asean Innovative Science and Enterpreneur Fair) 2023',
      ],
    ),

    // prodi ke 2
    Prodi(
      name: 'Akutansi(S1)',
      image: 'assets/logo/ekonomi_pembangunan.jpg',
      profile:
          'Program Studi S1 Akuntansi didirikan pada bulan April 1966 di bawah Fakultas Ekonomi dan Bisnis, UPN Veteran Jawa Timur. Program Studi Akuntansi memperoleh Akreditasi A dari BAN-PT. Setelah itu, berturut-turut pada tahun 2014 dan 2019, program studi Akuntansi berhasil mempertahankan Akreditasi A dari BAN-PT.',
      vision:
          'Menjadi Jurusan Akuntansi world class Unggul Berkarakter Bela Negara di tahun 2039.',
      mission: '''
1. Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional.
2. Meningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara.
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset bidang akuntansi dan kearifan lokal.
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan keuangan yang WBK (wilayah bebas korupsi) dan WBBM (wilayah bebas bersih melayani) di Jurusan akuntansi.
5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang akuntansi.
6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di Jurusan akuntansi.
7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri di bidang akuntansi.

      ''',
      accreditation: 'Unggul',
      headOfStudy: 'Dr. Dra. Ec. Endah Sulistiowati, M.Si,CfRA ',
      lecturers: [
        'Prof. Dr. Sri Trisnaningsih, M.Si, CFrA',
        'Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA ',
        'Dra. Ec. Anik Yuliati, M.Aks.',
        'Drs. Ec. Muslimin, M.Si',
        'Dr. Dwi Suhartini, M.Aks. CMA'
      ],
      website: 'https://akuntansi.upnjatim.ac.id/ ',
      achievements: [
        '1. Medali Emas Bidang Ekonomi dalam OSAN (Olimpiade Sains Akbar Nasional) 2022 ',
        '2. Juara III National Public Essay Competition Reviresco Reformation XXIX ',
        '3. Juara II Business Plan Competition IMAKO EXPO 2022'
      ],
    ),
    // prodi ke 3
    Prodi(
      name: 'Ekonomi Pembangunan(S1)',
      image: 'assets/logo/ekonomi_pembangunan.jpg',
      profile:
          'Ekonomi dan Bisnis, UPN "Veteran" Jawa Timur didirikan pada tahun 1974 dengan izin pendirian dari Kementerian Pertahanan dan Keamanan (Dephankam) dengan status "Perguruan Tinggi yang Terafiliasi dengan Negara". Dalam proses pengembangan manajemen Tri Dharma Perguruan Tinggi, Program Studi Ekonomi Pembangunan telah melakukan berbagai upaya untuk meningkatkan kualitas lulusan, seperti meningkatkan kualitas dan kuantitas fasilitas dan infrastruktur, meningkatkan kualitas sumber daya manusia (dosen dan staf pendidikan), serta menggandakan dan memanfaatkan kerja sama dengan sektor swasta.',
      vision:
          'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki karakter bela negara.',
      mission: '''
1. Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.
2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdaya guna untuk kesejahteraan masyarakat.
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.
5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial.
6. Meningkatkan kerja sama institusional dengan stakeholders baik dalam dan luar negeri.

''',
      accreditation: 'Unggul',
      headOfStudy: 'Riko Setya W, S.E.,M.M',
      lecturers: [
        'Prof. Dr. Syamsul Huda, S.E., M.T.',
        'Dr. Ignatia Martha, S.E., M.E.',
        'Dr. Muchtolifah, S.E., M.P.',
        'Dr. Ririt Iriani, S.E., M.E.',
        'Drs. Ec. Arief Bachtiar, M.Si.'
      ],
      website: 'https://ekbang.upnjatim.ac.id/ ',
      achievements: [
        '1. Best Speaker National Business Plan Competition',
        '2. Best Team Annual National Business Plan Competition Ideas 7 Universitas Gadjah Mada 2021',
        '3. Juara 1 & 3 Lomba Essay Milenial yang diadakan IDEI Insan Doktor Ekonomi Indonesia Oleh Mahasiswa Prodi Ekonomi Pembanguna FEB UPN "Veteran" Jatim'
      ],
    ),
    Prodi(
      name: 'Manajemen(S1)',
      image: 'assets/logo/ekonomi_pembangunan.jpg',
      profile:
          'Program Studi S1 Manajemen didirikan pada bulan Maret 1966 di bawah Fakultas Ekonomi dan Bisnis. Program ini secara teratur disebut sebagai program paling favorit dalam bidang studi manajemen ekonomi di Surabaya-Jawa Timur dan diakreditasi oleh BAN-PT (Badan Akreditasi Nasional) dengan status “A” (status luar biasa).',
      vision:
          'Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024.',
      mission: '''
1. Menyelenggarakan pendidikan bidang manejemen yang berkarakter bela negara
2. Meningkatkan pengembangan ilmu manajemen melalui kegiatan penelitian
3. Melaksanakan pengabdian kepada masyarakat melalui karya inovatif berbasis iptek dan kearifan lokal
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntanbilitas pengelolaan anggaran
5. Mengembangkan kualitas sumber manusia unggul dalam sikap dan tata nilai, unjuk rasa, penguasaan pengetahuan dan manajerial
6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu
7. Membangun jejaring dengan institusi baik nasional dan internasional melalui Implementasi kerjasama.


''',
      accreditation: 'Unggul',
      headOfStudy: 'Dr. Muhadjir Anwar, M.M., CFP',
      lecturers: [
        'Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA',
        'Prof. Dr. Yuniningsih, SE, M.Si',
        'Dr. Dhani Ichsanuddin Nur, MM, CFP',
        'Dra.Ec. Kustini, M.Si, CHRA',
        'Dr. Drs.Ec. Gendut Sukarno, MS, CHRA'
      ],
      website: 'https://manajemen.upnjatim.ac.id/ ',
      achievements: [
        '1. 8th Place National BMCC 2022 Himpunan Mahasiswa Sistem Pembangkit Energi Politeknik Elektronika Negeri Surabaya ',
        '2. Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022 ',
        '3. 1st Best Research Paper Seminar Nasional Manajemen 2022 dengan Judul Paper “Kualitas Layanan Publik Stasiun Kota Surabaya selama COVID-19: Analisa Big Data”'
      ],
    ),
    Prodi(
      name: 'Magister Manajemen(S2)',
      image: 'assets/logo/ekonomi_pembangunan.jpg',
      profile:
          'Magister Manajemen adalah Salah Satu Program Studi di Fakultas Pasca Sarjana UPN "Veteran" Jawa Timur. Program Studi Magister Manajemen mendapatkan nilai akreditasi "B" dengan konsentrasi bidang Studi Manajemen Keuangan, Manajemen Pemasaran dan Manajemen Sumber Daya Manusia.',
      vision:
          'Menjadi Jurusan Manajemen Unggul berkarakter Bela Negara pada tahun 2030',
      mission: '''
1. Menyelenggarakan dan mengembangkan pendidikan di bidang manajemen yang berkarakter bela negara;
2. Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat;
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran
5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial
6. Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri.

''',
      accreditation: 'B',
      headOfStudy: 'Prof. Dr, Yuningsih, S.E.,M.Si.',
      lecturers: [
        'Prof. Dr.Ir. Akhmad Fauzi, MMT',
        'Dr. Muhadjir Anwar, SE, MM,CRP',
        'Dr. Dra. Ec. Tri Kartika P, SE, M.Si,Crp',
        'Dr. Eko Purwanto, SE, M.Si',
        'Dr. Drs. Ec. Gendut Sukarno, MS.,CHRA'
      ],
      website: 'https://mm.upnjatim.ac.id/ ',
      achievements: ['-'],
    ),
  ];

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

  // Fungsi untuk membuka website
  void _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Fakultas Ekonomi Bisnis Upn "Veteran" Jatim'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/logo/feb_logo.jpg'),
                  ),
                ),
                SizedBox(width: 8), // Jarak antara logo dan teks
                Expanded(
                  child: Text(
                    'Fakultas Ekonomi Bisnis merupakan salah Satu dari 7 Fakultas di UPN "Veteran" Jawa Timur. Yang terdiri dari program studi:',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: prodiList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProdiDetail(prodi: prodiList[index]),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(prodiList[index].image),
                      ),
                      title: Text(prodiList[index].name),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _launchEmail('ppmb@upnjatim.ac.id');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.email),
                        title: Text('Email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _launchWebsite('https://febis.upnjatim.ac.id/');
                    },
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.web),
                        title: Text('Website'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Jarak antara daftar prodi dan profil
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10), // Jarak antara judul dan card profil
          GestureDetector(
            onTap: () {
              // Navigasi ke ProfileScreen saat card profil di klik
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30, // Ubah nilai radius sesuai kebutuhan
                    backgroundImage: AssetImage('assets/profile/me.png'),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Zheand Rizky Pranasyach',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'NPM: 22082010051.', // Ganti dengan NPM Anda
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
