// lib/screens/profile_page.dart

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor:  const Color.fromRGBO(245, 245, 245, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gambar Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/images/user.png'), // Sesuaikan dengan path gambar Anda
            ),
            SizedBox(height: 16),
            
            // Nama Pengguna
            Text(
              'Naufal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            
            // Info Umum
            Text(
              'naufal@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 24),
            
            // Tombol Aksi
            ElevatedButton.icon(
              icon: Icon(Icons.edit, color: Colors.white),
              label: Text("Edit Profile"),
              onPressed: () {
                // Tambahkan logika edit profil
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Tombol Pengaturan
            ListTile(
              leading: Icon(Icons.settings, color: Colors.orangeAccent),
              title: Text('Settings'),
              onTap: () {
                // Tambahkan logika pengaturan
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.orangeAccent),
              title: Text('Help & Support'),
              onTap: () {
                // Tambahkan logika bantuan
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text('Log Out', style: TextStyle(color: Colors.redAccent)),
              onTap: () {
                // Tambahkan logika logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
