import 'package:flutter/material.dart';

class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({super.key});

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
          "Detail Servis",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header detail servis
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Servis #12345",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Chip(
                      label: Text(
                        "Sedang Diperbaiki",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      backgroundColor: Colors.orange,
                    ),
                  ],
                ),
                const Divider(height: 24),

                // Informasi utama servis
                _buildInfoRow("Nama Pelanggan", "John Doe"),
                _buildInfoRow("Perangkat", "Xiaomi Redmi Note 8 Pro"),
                _buildInfoRow("Nomor Telepon", "+62 812-3456-7890"),
                _buildInfoRow("Tanggal Masuk", "2 Oktober 2025"),
                _buildInfoRow("Teknisi", "Budi Setiawan"),
                _buildInfoRow("Estimasi Selesai", "5 Oktober 2025"),

                const SizedBox(height: 16),
                const Divider(),

                const SizedBox(height: 8),
                const Text(
                  "Masalah yang Dilaporkan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Layar retak dan baterai cepat habis. Pelanggan melaporkan ponsel juga sering panas.",
                  style: TextStyle(fontSize: 15, color: Colors.black87),
                ),

                const SizedBox(height: 16),
                const Text(
                  "Tindakan Perbaikan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  "Teknisi melakukan penggantian LCD dan baterai original (baterai original masih menunggu stock), serta pengecekan ulang motherboard.",
                  style: TextStyle(fontSize: 15, color: Colors.black87),
                ),

                const SizedBox(height: 24),

                // Estimasi waktu dan biaya servis
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Estimasi Biaya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Rp 850.000 (LCD + Baterai + Jasa Servis)",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Detail servis berhasil dikonfirmasi."),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Konfirmasi Detail Servis",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget baris informasi detail
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
