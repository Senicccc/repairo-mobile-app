import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/history_page.dart';
import 'pages/notifications_page.dart';
import 'pages/account_page.dart';

void main() {
  runApp(const RepairoApp());
}

class RepairoApp extends StatelessWidget {
  const RepairoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repairo',
      home: const MainPage(), // pakai bottom navigation
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),          // dari home_page.dart
    HistoryPage(),       // dari history_page.dart
    NotificationsPage(), // dari notifications_page.dart
    AccountPage(),       // dari account_page.dart
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notif"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
    );
  }
}
