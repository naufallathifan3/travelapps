// lib/screens/home_screen.dart

import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/search_bar.dart';
import '../widgets/place_list.dart';
import '../widgets/group_list.dart';
import 'profile_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      HomeContent(onMenuSelect: _onNavBarTapped),  // Berikan callback di sini
      PlaceList(isVertical: true),                 // Halaman Travel Places
      ProfilePage(),                               // Halaman Profil
    ];

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: _selectedIndex == 1 ? Text("Travel Places") : null,  // Menampilkan judul hanya jika di halaman Travel Places
        leading: _selectedIndex == 1
            ? IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;  // Kembali ke halaman utama
                  });
                },
              )
            : null,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Travel Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavBarTapped,
      ),
    );
  }
}

// Komponen halaman utama untuk menjaga struktur halaman Home tetap terpisah
class HomeContent extends StatelessWidget {
  final Function(int) onMenuSelect;

  HomeContent({required this.onMenuSelect});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/user.png'),
                ),
                SizedBox(width: 10),
                Text("Hello Naufal", style: kTitleStyle),
                Spacer(),
                PopupMenuButton<int>(
                  icon: Icon(Icons.menu, size: 30),
                  onSelected: (index) {
                    onMenuSelect(index);  // Navigasi berdasarkan pilihan menu
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(Icons.home, color: Colors.black54),
                          SizedBox(width: 8),
                          Text("Home"),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.black54),
                          SizedBox(width: 8),
                          Text("Travel Places"),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.person, color: Colors.black54),
                          SizedBox(width: 8),
                          Text("Profile"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Text("Explore the Beautiful Semarang City!", style: kTitleStyle),
            SizedBox(height: 40),
            CustomSearchBar(),
            SizedBox(height: 20),
            Text("Travel Places", style: kTitleStyle),
            PlaceList(),
            SizedBox(height: 40),
            Text("Travel Groups", style: kTitleStyle),
            GroupList(),
          ],
        ),
      ),
    );
  }
}
