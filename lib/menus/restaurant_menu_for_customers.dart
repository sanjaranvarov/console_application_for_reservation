import 'dart:io';
import 'package:console_application_for_reservation/menus/customers_menu.dart';
import 'package:console_application_for_reservation/menus/welcome_menu.dart';
import 'package:console_application_for_reservation/services/navigator_service.dart';

import 'menu.dart';

class RestaurantMenuCustomers extends Menu{
  static const id = "/restaurant_menu";

  @override
  build() async {
    for(int i = 0; i< Menu.foodList.length; i++){
      print("$i - ${Menu.foodList[i].foodName} - \$${Menu.foodList[i].foodPrice}");
    }
    print(
        "(1) - GO BACK\n"
        "(2) - GO MAIN"
    );
    String? menuSelection = stdin.readLineSync();

    switch(menuSelection){
      case "1":{
        await Navigator.push(CustomersMenu());
      }
      break;
      case "2":{
        await Navigator.push(WelcomeMenu());
      }
      break;
      default:{build();
      }
    }
  }
}