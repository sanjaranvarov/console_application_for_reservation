import 'dart:io';
import 'package:console_application_for_reservation/menus/reservations_menu_customer.dart';
import 'package:console_application_for_reservation/menus/restaurant_menu_for_customers.dart';
import 'package:console_application_for_reservation/menus/welcome_menu.dart';
import 'package:console_application_for_reservation/services/navigator_service.dart';
import 'menu.dart';

class CustomersMenu extends Menu {
  static const id = "/users_menu";

  @override
  build() async {
    print("Welcome! We are very glad of your visit.\n"
        "(1) - MENU\n"
        "(2) - RESERVATION\n"
        "(3) - GO BACK\n"
        "(0) - EXIT"
    );

    String? menuSelection = stdin.readLineSync();
    switch (menuSelection) {
      case "1":
        {
          await Navigator.push(RestaurantMenuCustomers());
        }
      case "2":
        {
          await Navigator.push(ReservationsMenuCustomer());
        }
      case "3":
        {
          await Navigator.push(WelcomeMenu());
        }
      case "0":
        {
          exit(0);
        }
      default:
        print("Wrong choice!");
        build();
    }
  }
}
