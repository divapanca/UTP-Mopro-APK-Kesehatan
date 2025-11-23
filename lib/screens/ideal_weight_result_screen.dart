import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';

class IdealWeightResultScreen extends StatelessWidget {
  const IdealWeightResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ideal Weight')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Header (Placeholder kecil)
            Container(
              margin: const EdgeInsets.all(16.0),
              // Padding sedikit lebih besar agar lingkaran tidak terlalu mepet border
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                // Membuat bentuk lingkaran
                shape: BoxShape.circle,
                // Atau bisa juga menggunakan: borderRadius: BorderRadius.circular(50.0),
              ),
              child: const SizedBox(
                width: 60,
                height: 60,
                child: Placeholder(
                  color: Colors.black,
                ), // Ikon placeholder di tengah lingkaran
              ),
            ),

            // Bagian Hasil Utama (Placeholder besar)
            Container(
              margin: const EdgeInsets.all(14.0),
              padding: const EdgeInsets.all(
                30.0,
              ), // Sesuaikan padding sesuai kebutuhan
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                shape: BoxShape.circle, // Membuat bentuk lingkaran
              ),
              child: const SizedBox(
                width: 100, // Sesuaikan ukuran lebar sesuai kebutuhan Anda
                height: 100, // Sesuaikan ukuran tinggi sesuai kebutuhan Anda
                child: Placeholder(color: Colors.black),
              ),
            ),

            // Garis Teks Tambahan di Bawah
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Container(
                  width: 200,
                  height: 10,
                  color: Colors.grey[300],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Container(
                  width: 200,
                  height: 10,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
