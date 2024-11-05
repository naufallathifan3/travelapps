// lib/services/travel_service.dart

import '../models/travel_place.dart';

class TravelService {
  static List<TravelPlace> getTravelPlaces() {
    return [
      TravelPlace(
        name: 'City Rome',
        location: 'Italy',
        image: 'assets/images/rome.jpg',
        price: 740,
        duration: 5,
      ),
      TravelPlace(
        name: 'Grand Canyon',
        location: 'USA',
        image: 'assets/images/grand_canyon.jpg',
        price: 240,
        duration: 7,
      ),
    ];
  }
}
