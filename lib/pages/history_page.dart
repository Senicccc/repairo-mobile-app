import 'package:flutter/material.dart';
import 'detail_service_page.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  // Data riwayat servis
  final List<Map<String, String>> historyData = const [
    {'id': '012345', 'tanggal': '2 Oktober 2025'},
    {'id': '012346', 'tanggal': '28 September 2025'},
    {'id': '012347', 'tanggal': '15 September 2025'},
    {'id': '012348', 'tanggal': '7 September 2025'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Riwayat Servis",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          final data = historyData[index];
          final isClickable = data['id'] == '012345';

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 3,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Servis #${data['id']}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Tanggal Servis: ${data['tanggal']}",
                    style: const TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                  const Divider(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: const Icon(Icons.info_outline, color: Colors.white),
                      label: const Text(
                        "Lihat Detail",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: isClickable
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ServiceDetailPage(),
                                ),
                              );
                            }
                          : () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Detail untuk Servis #${data['id']} belum tersedia.",
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
