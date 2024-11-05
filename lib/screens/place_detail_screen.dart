// lib/screens/place_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../utils/constants.dart';
import '../utils/helpers.dart';

class PlaceDetailScreen extends StatelessWidget {
  final TravelPlace place;

  PlaceDetailScreen(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(place.image, fit: BoxFit.cover),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name, style: kTitleStyle),
                  SizedBox(height: 8),
                  Text(place.location, style: kSubtitleStyle),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text("Trip Duration: ${place.duration} Days", style: kSubtitleStyle),
                      Spacer(),
                      Text(formatPrice(place.price), style: kTitleStyle),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika pemesanan di sini, jika diperlukan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange, // Warna latar belakang oranye
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Radius untuk sudut membulat
                      ),
                    ),
                    child: Text(
                      "Book Now",
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
