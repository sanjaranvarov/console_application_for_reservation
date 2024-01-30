import 'package:console_application_for_reservation/models/reservation.dart';
import 'package:console_application_for_reservation/models/category.dart';
import 'package:console_application_for_reservation/models/food.dart';


abstract class Menu {
  static List<Category> catList = [Category(name: "category1")];
  static List<Food> foodList = [
    Food(foodName: "Plov", foodPrice: 16.25, category: Category(name: "Uzbek")),
    Food(foodName: "Spaghetti", foodPrice: 4.9, category: Category(name: "Salad")),
    Food(foodName: "Borsch", foodPrice: 20.25, category: Category(name: "Ukrainian")),
    Food(foodName: "Sushi", foodPrice: 25.50, category: Category(name: "Japan")),
    Food(foodName: "Shashlik", foodPrice: 22.05, category: Category(name: "Georgian")),
    Food(foodName: "Sausage", foodPrice: 5.50, category: Category(name: "Germany")),
    Food(foodName: "Noodles", foodPrice: 16.50, category: Category(name: "Chine")),
    Food(foodName: "Curry", foodPrice: 8.25, category: Category(name: "India")),
  ];

  static List<Reservation> reservationsList = [Reservation(foodList: foodList, dayOfWeek: 1, tableNumber: 1, numberOfPpl: 4)];

  bool doesCatExist(String newCatName) {
    return catList.any((cat) => cat.name == newCatName);
  }

  Category findByName(String catName) {
    return catList.firstWhere((cat) => cat.name == catName);
  }

  static int totalTables = 20;

  static int isTableAvailable(int dayOfWeek) {
    int occupiedTables = 0;

    for (var reservation in reservationsList) {
      if (reservation.dayOfWeek == dayOfWeek) {
        occupiedTables++;
      }
    }

    return occupiedTables;
  }
  build();
}