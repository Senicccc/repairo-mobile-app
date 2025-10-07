import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  // Data notifikasi servis
  final List<Map<String, String>> notifications = const [
    {
      "title": "Servis #012345",
      "message":
          "Perangkat Anda sedang dalam proses perbaikan oleh teknisi Budi Setiawan.",
      "date": "2 Oktober 2025",
    },
    {
      "title": "Servis #012346",
      "message":
          "Perangkat Anda telah selesai diperbaiki dan siap diambil di counter.",
      "date": "28 September 2025",
    },
    {
      "title": "Servis #012347",
      "message":
          "Perangkat Anda baru saja diterima dan menunggu antrian servis.",
      "date": "15 September 2025",
    },
    {
      "title": "Servis #012348",
      "message":
          "Servis telah selesai dan perangkat berhasil diambil oleh pelanggan.",
      "date": "7 September 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Notifikasi Servis",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.grey, thickness: 0.6),
        itemBuilder: (context, index) {
          final notif = notifications[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            leading: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.blue,
            ),
            title: Text(
              notif['title']!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  notif['message']!,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const SizedBox(height: 6),
                Text(
                  notif['date']!,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
