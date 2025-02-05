import 'package:flutter/material.dart';

enum CarFilters {
  allCars,
  familyCars, 
  cheapCars, 
  luxuryCars, 
  sportCars, 
  popularCars,
}

extension CarFiltersExtensions on CarFilters {
  String get category {
    switch (this) {
      case CarFilters.allCars:
      return 'All';
      case CarFilters.familyCars:
      return 'Family';
      case CarFilters.cheapCars:
      return 'Cheap';
      case CarFilters.luxuryCars:
      return 'Luxury';
      case CarFilters.sportCars:
      return 'Sport';
      case CarFilters.popularCars:
      return 'Popular';
      // ignore: unreachable_switch_default
      default: 
      return 'Other';
    }
  }

  Color get getColor {
    switch (this) {
      case CarFilters.allCars:
      return Colors.grey;
      case CarFilters.familyCars:
      return Colors.yellow;
      case CarFilters.cheapCars:
      return Colors.brown;
      case CarFilters.luxuryCars:
      return Colors.red;
      case CarFilters.sportCars:
      return Colors.blue;
      case CarFilters.popularCars:
      return Colors.black;
      // ignore: unreachable_switch_default
      default: 
      return Colors.pink;
    }
  }
}