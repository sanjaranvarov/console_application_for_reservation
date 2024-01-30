import 'package:console_application_for_reservation/models/food.dart';
class Reservation{
  late List<Food> foodList;
  late int dayOfWeek;
  late int tableNumber;
  late int numberOfPpl;

  Reservation({required this.foodList, required this.dayOfWeek, required this.tableNumber, required this.numberOfPpl});
}