import 'dart:io';
import 'package:console_application_for_reservation/menus/customers_menu.dart';
import 'package:console_application_for_reservation/menus/staffs_menu.dart';
import 'package:console_application_for_reservation/services/navigator_service.dart';
import 'menu.dart';

class WelcomeMenu extends Menu{
  static const id = "/welcome_menu";

  @override
  build() async {
    print("Choose one of them!\n"
        "(1) - Customer\n"
        "(2) - Staff");
    String? menuSelection = stdin.readLineSync();

    switch(menuSelection){
      case "1":{
        await Navigator.push(CustomersMenu());
      }
      case "2":{
        await Navigator.push(StaffsMenu());
      }
      default: print("Wrong choice!");build();
    }
  }

}