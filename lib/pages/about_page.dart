import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Tentang Kami",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo dan nama perusahaan
            Center(
              child: Column(
                children: [
                  const Icon(
                    Icons.phone_android,
                    size: 70,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Repairo Service Center",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Profesional dalam Servis dan Perawatan Smartphone Anda",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Tentang Repairo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Repairo Service Center adalah pusat layanan profesional untuk perbaikan smartphone berbagai merek. Kami berkomitmen memberikan layanan cepat, transparan, dan bergaransi bagi setiap pelanggan.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Visi & Misi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Visi kami adalah menjadi pusat servis smartphone terpercaya di Indonesia. Misi kami meliputi peningkatan kualitas pelayanan, penggunaan suku cadang original, dan kepuasan pelanggan sebagai prioritas utama.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              "Kontak Kami",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            _buildContact(Icons.phone, "+62 812-3456-7890"),
            _buildContact(Icons.email, "support@repairo.id"),
            _buildContact(
              Icons.location_on,
              "Jl. Melati No. 23, Karawang, Jawa Barat",
            ),

            const SizedBox(height: 40),
            Center(
              child: Text(
                "© 2025 Repairo Service Center\nAll rights reserved.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContact(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue.shade900),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
