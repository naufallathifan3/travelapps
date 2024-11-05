// lib/widgets/group_list.dart

import 'package:flutter/material.dart';
import '../models/travel_group.dart';
import '../screens/travel_group_screen.dart';
import 'group_card.dart';

class GroupList extends StatelessWidget {
  final List<TravelGroup> groups = [
    TravelGroup(
      name: "PANORAMA WARDHANA GROUP",
      location: "Kota Semarang",
      image: "lib/assets/images/pwg.jpg",
      membersCount: 20,
    ),
    TravelGroup(
      name: "K-Menjangan Group",
      location: "Kota Semarang",
      image: "lib/assets/images/kmg.jpg",
      membersCount: 15,
    ),
    TravelGroup(
      name: "Antara Kita Group",
      location: "Kota Semarang",
      image: "lib/assets/images/akg.jpg",
      membersCount: 15,
    ),
    TravelGroup(
      name: "Monica Group",
      location: "Kota Semarang",
      image: "lib/assets/images/mg.jpg",
      membersCount: 15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: groups.length,
        itemBuilder: (context, index) {
          final group = groups[index];
          return GestureDetector(
            onTap: () {
              // Navigasi ke TravelGroupScreen dengan data grup yang dipilih
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TravelGroupScreen(group),
                ),
              );
            },
            child: GroupCard(group: group),
          );
        },
      ),
    );
  }
}
