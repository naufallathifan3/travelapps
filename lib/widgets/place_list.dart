// lib/widgets/place_list.dart

import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../screens/place_detail_screen.dart';
import 'place_card.dart';

class PlaceList extends StatelessWidget {
  final bool isVertical; // Menentukan orientasi tampilan

  PlaceList({this.isVertical = false});

  final List<TravelPlace> places = [
    TravelPlace(
      name: "Lawang Sewu",
      location: "Kota Semarang",
      price: 20000,
      image: "lib/assets/images/lw.jpg",
      duration: 1,
    ),
    TravelPlace(
      name: "Sam Poo Khong",
      location: "Kota Semarang",
      price: 15000,
      image: "lib/assets/images/spk.jpg",
      duration: 7,
    ),
    TravelPlace(
      name: "Masjid Agung Jawa Tengah",
      location: "Kota Semarang",
      price: 3000,
      image: "lib/assets/images/majt.jpg",
      duration: 7,
    ),
    TravelPlace(
      name: "Brow Canyon",
      location: "Kota Semarang",
      price: 3000,
      image: "lib/assets/images/bc.jpg",
      duration: 7,
    ),
    TravelPlace(
      name: "Kota Lama Semarang",
      location: "Kota Semarang",
      price: 3000,
      image: "lib/assets/images/kl.jpg",
      duration: 7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? ListView.builder(
            shrinkWrap: true,
            itemCount: places.length,
            itemBuilder: (context, index) {
              final place = places[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetailScreen(place),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: PlaceCard(place: place),
                ),
              );
            },
          )
        : SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: places.length,
              itemBuilder: (context, index) {
                final place = places[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlaceDetailScreen(place),
                      ),
                    );
                  },
                  child: PlaceCard(place: place),
                );
              },
            ),
          );
  }
}
