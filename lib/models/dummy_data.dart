import './item_model.dart';

List<DogeModel> availableDogs = [
  DogeModel(
      dateAdded: DateTime.now(),
      favoriteMeal: 'BANANA',
      id: DateTime.now(),
      name: 'Marly',
      imageUrl: 'assets/Dog.png'),
  DogeModel(
      dateAdded: DateTime.now().subtract(const Duration(
          days: 1)), // minus one day just to simulate the days in the design
      favoriteMeal: 'CHIHUAHUA',
      id: DateTime.now(),
      name: 'Cocoa',
      imageUrl: 'assets/coca.png'),
  DogeModel(
      dateAdded: DateTime.now().subtract(const Duration(
          days: 2)), // minus tow days just to simulate the days in the design
      favoriteMeal: 'BANANA',
      id: DateTime.now(),
      name: 'Walt',
      imageUrl: 'assets/walt.png'),
];

List<DogeModel> availableCats = [
  DogeModel(
      dateAdded: DateTime.now(),
      favoriteMeal: 'BANANA',
      id: DateTime.now(),
      name: 'Marly',
      imageUrl: 'assets/Dog.png'),
  DogeModel(
      dateAdded: DateTime.now().subtract(const Duration(
          days: 1)), // minus one day just to simulate the days in the design
      favoriteMeal: 'CHIHUAHUA',
      id: DateTime.now(),
      name: 'Cocoa',
      imageUrl: 'assets/coca.png'),
  DogeModel(
      dateAdded: DateTime.now().subtract(const Duration(
          days: 2)), // minus tow days just to simulate the days in the design
      favoriteMeal: 'BANANA',
      id: DateTime.now(),
      name: 'Walt',
      imageUrl: 'assets/walt.png'),
];

