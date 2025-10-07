import 'package:flutter/material.dart';
import 'detail_service_page.dart';

class TrackingServicePage extends StatelessWidget {
  const TrackingServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Tracking Service",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kolom pencarian servis
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari nomor servis atau nama...",
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 8, right: 4),
                    child: Icon(Icons.search, color: Colors.blue.shade900),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.blue.shade900,
                      width: 2,
                    ),
                  ),
                ),
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Recent Search",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRecentSearch("Servis #012345"),
                  _buildRecentSearch("Servis #012344"),
                  _buildRecentSearch("Servis #012001"),
                  _buildRecentSearch("Servis #000801"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  // Navigasi ke detail servis jika dipilih
                  _buildServiceCard(
                    context,
                    "Servis #012345",
                    "Sedang Diperbaiki",
                    Colors.blue.shade900,
                    navigate: true,
                  ),
                  _buildServiceCard(
                    context,
                    "Servis #012344",
                    "Selesai",
                    Colors.green.shade700,
                  ),
                  _buildServiceCard(
                    context,
                    "Servis #012001",
                    "Selesai",
                    Colors.green.shade700,
                  ),
                  _buildServiceCard(
                    context,
                    "Servis #000801",
                    "Batal",
                    Colors.red.shade700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentSearch(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Chip(
        label: Text(label, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade900,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      ),
    );
  }

  Widget _buildServiceCard(
    BuildContext context,
    String title,
    String status,
    Color color, {
    bool navigate = false,
  }) {
    return Card(
      color: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(status, style: TextStyle(color: color)),
        trailing: Icon(Icons.chevron_right, color: Colors.grey.shade600),
        onTap: () {
          if (navigate) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ServiceDetailPage(),
              ),
            );
          }
        },
      ),
    );
  }
}
