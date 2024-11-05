// lib/widgets/place_card.dart

import 'package:flutter/material.dart';
import '../models/travel_place.dart';
import '../utils/constants.dart';
import '../utils/helpers.dart';

class PlaceCard extends StatelessWidget {
  final TravelPlace place;
  
  PlaceCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(place.image, fit: BoxFit.cover, height: 120, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(place.name, style: kTitleStyle.copyWith(fontSize: 16)),
                Text(place.location, style: kSubtitleStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(formatPrice(place.price), style: kTitleStyle.copyWith(fontSize: 16, color: kPrimaryColor)),
                    Text('${place.duration} days', style: kSubtitleStyle),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
