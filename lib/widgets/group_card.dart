// lib/widgets/group_card.dart

import 'package:flutter/material.dart';
import '../models/travel_group.dart';
import '../utils/constants.dart';

class GroupCard extends StatelessWidget {
  final TravelGroup group;

  GroupCard({required this.group});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
            child: Image.asset(group.image, fit: BoxFit.cover, height: 100, width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(group.name, style: kTitleStyle.copyWith(fontSize: 16)),
                Text(group.location, style: kSubtitleStyle),
                Row(
                  children: [
                    Icon(Icons.group, color: kPrimaryColor, size: 20),
                    Text('${group.membersCount}+ Members', style: kSubtitleStyle),
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
