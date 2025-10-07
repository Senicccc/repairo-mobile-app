import 'package:flutter/material.dart';

class LoyaltyPage extends StatelessWidget {
  const LoyaltyPage({super.key});

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
          "Loyalty Program",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kartu utama poin member
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.blue.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Poin Anda",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "245",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Level: Silver Member",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              "Barcode akan tersedia di update berikutnya.",
                            ),
                            backgroundColor: Colors.blue.shade900,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.qr_code_2,
                          size: 50,
                          color: Colors.blue.shade900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Text(
                      "Ketuk ikon untuk menampilkan barcode Anda",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "Keuntungan Member",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            _buildBenefit(
              Icons.local_offer,
              "Diskon 10% untuk setiap servis berikutnya.",
            ),
            _buildBenefit(
              Icons.card_giftcard,
              "Tukar poin dengan voucher servis gratis.",
            ),
            _buildBenefit(Icons.flash_on, "Prioritas antrian servis cepat."),
            _buildBenefit(
              Icons.star,
              "Akses promo eksklusif untuk member Silver & Gold.",
            ),

            const SizedBox(height: 24),

            const Text(
              "Penukaran Poin Tersedia Untuk:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            _buildBenefit(
              Icons.cleaning_services,
              "Voucher Servis Rp50.000 (500 poin)",
            ),
            _buildBenefit(
              Icons.battery_charging_full,
              "Diskon 20% untuk penggantian baterai, dan LCD (300 poin)",
            ),
            _buildBenefit(
              Icons.phone_android,
              "Voucher aksesoris gratis (200 poin)",
            ),

            const SizedBox(height: 24),

            const Text(
              "Cara Mendapatkan Poin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),

            _buildStep("1", "Setiap transaksi servis menambah 50–100 poin."),
            _buildStep(
              "2",
              "Memberikan feedback setelah servis menambah 20 poin.",
            ),
            _buildStep(
              "3",
              "Mengajak teman bergabung mendapatkan 100 poin bonus.",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefit(IconData icon, String text) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue.shade900, size: 22),
        title: Text(
          text,
          style: const TextStyle(fontSize: 14.5, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _buildStep(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 13,
            backgroundColor: Colors.blue.shade900,
            child: Text(
              number,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14.5, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
