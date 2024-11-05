// lib/screens/travel_group_screen.dart

import 'package:flutter/material.dart';
import '../models/travel_group.dart';
import '../utils/constants.dart';

class TravelGroupScreen extends StatelessWidget {
  final TravelGroup group;

  TravelGroupScreen(this.group);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(group.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  // Kembali ke halaman utama
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(group.image, fit: BoxFit.cover),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(group.name, style: kTitleStyle),
                  SizedBox(height: 8),
                  Text(group.location, style: kSubtitleStyle),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.group),
                      SizedBox(width: 8),
                      Text("${group.membersCount}+ Members", style: kSubtitleStyle),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Logika bergabung dengan grup dapat ditambahkan di sini
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Warna latar belakang oranye
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Radius sudut
                      ),
                    ),
                    child: Text(
                      "Join Group",
                      style: TextStyle(
                        color: Colors.white, // Warna teks putih
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
