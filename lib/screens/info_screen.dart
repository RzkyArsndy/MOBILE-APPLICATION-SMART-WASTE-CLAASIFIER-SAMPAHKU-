import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Aplikasi'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2ECC71), Color(0xFF27AE60)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.recycling,
                      size: 80,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'SAMPAHKU',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Smart Waste Classifier',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Tentang Aplikasi
              _buildSection(
                icon: Icons.info,
                title: 'Tentang Aplikasi',
                content: 'SAMPAHKU adalah aplikasi pintar berbasis kecerdasan buatan (AI) yang dapat mengklasifikasikan sampah secara otomatis. Aplikasi ini menggunakan teknologi Deep Learning dengan Convolutional Neural Network (CNN) untuk mengenali 7 jenis sampah.',
                color: Colors.blue,
              ),

              const SizedBox(height: 20),

              // Kategori Sampah
              _buildSection(
                icon: Icons.category,
                title: 'Kategori yang Dapat Dideteksi',
                content: '1. Organik ♻️\n2. Botol Plastik 🍼\n3. Kaca 🥤\n4. Kardus 📦\n5. Kertas 📄\n6. Metal 🥫\n7. Plastik 🛍️',
                color: Colors.green,
              ),

              const SizedBox(height: 20),

              // Cara Penggunaan
              _buildSection(
                icon: Icons.help_outline,
                title: 'Cara Penggunaan',
                content: '1. Tekan tombol "Ambil Foto" untuk mengambil gambar sampah dengan kamera\n2. Atau tekan "Pilih dari Galeri" untuk memilih foto yang sudah ada\n3. Tunggu beberapa saat hingga AI menganalisis gambar\n4. Lihat hasil klasifikasi dan panduan pembuangan sampah',
                color: Colors.orange,
              ),

              const SizedBox(height: 20),

              // Tips
              _buildSection(
                icon: Icons.lightbulb_outline,
                title: 'Tips untuk Hasil Terbaik',
                content: '• Gunakan pencahayaan yang cukup\n• Pastikan sampah terlihat jelas di foto\n• Ambil foto dari jarak yang tidak terlalu jauh\n• Fokuskan kamera pada objek sampah\n• Hindari background yang terlalu ramai',
                color: Colors.amber,
              ),

              const SizedBox(height: 20),

              // Manfaat
              _buildSection(
                icon: Icons.eco,
                title: 'Manfaat',
                content: '• Membantu memilah sampah dengan benar\n• Meningkatkan kesadaran tentang daur ulang\n• Mengurangi pencemaran lingkungan\n• Mendukung program pelestarian lingkungan\n• Mudah digunakan dan praktis',
                color: Colors.teal,
              ),

              const SizedBox(height: 30),

              // Footer
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  children: [
                    Text(
                      'Dikembangkan oleh:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7F8C8D),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '[M.RIZKY ARISANDY]',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2C3E50),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Mobile Computing - UAS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7F8C8D),
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 10),
                    Text(
                      'Versi 1.0.0',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFBDC3C7),
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

  Widget _buildSection({
    required IconData icon,
    required String title,
    required String content,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            content,
            style: const TextStyle(
              fontSize: 15,
              height: 1.6,
              color: Color(0xFF2C3E50),
            ),
          ),
        ],
      ),
    );
  }
}