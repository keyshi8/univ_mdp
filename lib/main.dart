import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Gambar Cover MDP
                Image.asset('images/cover_mdp.jpg'),
                // Judul
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Universitas MDP',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Staatliches',
                        fontWeight: FontWeight.w300),
                  ),
                ),
                // Deskripsi
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Column(
                    children: [
                      Text(
                        'Berawal dari lembaga kursus yang berorientasi khusus memberikan pelatihan/kursus dari berbagai program aplikasi komputer, MDP didirikan pada tanggal 1 Juli 1987 di kota Palembang, tepatnya di Jalan Rupit No. 20. Pada saat itu fasilitas laboratorium komputer yang ada hanya 2 ruangan, dan pada bulan November 1988 dibuka cabang di Jl. Letkol Iskandar dengan fasilitas 2 ruangan lab. komputer. Seiring berkembangnya zaman khususnya untuk memenuhi kebutuhan tenaga terampil di bidang komputer dan untuk lebih meningkatkan pelayanan, maka manajemen MDP memutuskan mulai 7 Mei 1990 pindah ke lokasi baru di Jl. Lingkaran 1 No. 305 Palembang dengan kapasitas 6 (enam) kelas dan fasilitas kelas lebih baik.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Pada 9 April 2021, berdasarkan Surat Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia No. 125/E/O/2021 tentang Penggabungan AMIK MDP, STMIK GI MDP, dan STIE MDP menjadi Universitas Multi Data Palembang.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                      ),
                    ],
                  ),
                ),
                // List Gambar Horizontal
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Gambar ke -1
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network(
                              'https://mdp.ac.id/mdp2020/wp-content/uploads/2020/11/kurikulum-diajarkan.jpg'),
                        ),
                      ),
                      // Gambar ke -2
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network(
                              'https://mdp.ac.id/mdp2020/wp-content/uploads/2020/11/kampus-bebas-rokok.jpg'),
                        ),
                      ),
                      // Gambar ke -3
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network(
                              'https://mdp.ac.id/mdp2020/wp-content/uploads/2020/11/kampus-juara.jpg'),
                        ),
                      ),
                      // Gambar ke -4
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4.0),
                          child: Image.network(
                              'https://album.mdp.ac.id/albums/userpics/10001/Pelatihan-SLIMS_282029.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                // Tombol Lihat Lokasi
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      // Kode untuk menampilkan lokasi
                      const url =
                          'https://www.google.com/maps/search/?api=1&query=Universitas+Multi+Data+Palembang';
                      final uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        developer.log('Could not launch $url');
                      }
                    },
                    child: const Text('Lihat Lokasi'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
