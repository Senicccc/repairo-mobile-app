import 'package:flutter/material.dart';
import 'loyalty_page.dart';
import 'about_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Akun Saya",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profil pengguna
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                // Foto profil pengguna
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue.shade100,
                  backgroundImage: const AssetImage(
                    'assets/profile_placeholder.png',
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 20),
                // Informasi akun
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "john.doe@email.com",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Terdaftar sejak: 12 Agustus 2024",
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Menu utama
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildListTile(
                  icon: Icons.star_outline,
                  title: "Loyalty / Poin Servis",
                  subtitle: "Lihat poin dan status keanggotaan",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoyaltyPage()),
                    );
                  },
                ),
                const Divider(height: 0),
                _buildListTile(
                  icon: Icons.info_outline,
                  title: "Tentang Kami",
                  subtitle: "Informasi tentang bengkel kami",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AboutUsPage()),
                    );
                  },
                ),
                const Divider(height: 0),
                _buildListTile(
                  icon: Icons.logout,
                  title: "Logout",
                  subtitle: "Keluar dari akun Anda",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: Colors.white,
                        title: const Text("Konfirmasi Logout"),
                        content: const Text("Apakah Anda yakin ingin keluar?"),
                        actions: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              foregroundColor: Colors.white,
                              elevation: 0,
                            ),
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Batal"),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue.shade900,
                              foregroundColor: Colors.white,
                              elevation: 0,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Anda telah logout."),
                                ),
                              );
                              // Navigasi ke halaman login (implementasi selanjutnya)
                            },
                            child: const Text(
                              "Logout",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue.shade900, size: 28),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
