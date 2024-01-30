import 'dart:io';
import 'package:console_application_for_reservation/menus/add_meal_menu.dart';
import 'package:console_application_for_reservation/menus/menu.dart';
import 'package:console_application_for_reservation/menus/reservations_menu_staff.dart';
import 'package:console_application_for_reservation/menus/restaurant_menu_for_staff.dart';
import '../services/navigator_service.dart';

class StaffsMenu extends Menu{
  static const id = "/staffs_menu";

  @override
  build() async {
    print("Hi!\n"
        "(1) - MENU\n"
        "(2) - SEE RESERVATION\n"
        "(3) - ADD MEAL TO MENU\n"
        "(0) - GO BACK");
    String? menuSelection = stdin.readLineSync();

    switch(menuSelection){
      case "1":{
        await Navigator.push(RestaurantMenuStaff());
      }
      case "2":{
        await Navigator.push(ReservationsMenuStaff());
      }
      case "3":{
        await Navigator.push(AddMealMenu());
      }
      case "0":{
        await Navigator.pop();
      }
    }
  }
}