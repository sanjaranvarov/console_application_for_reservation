import 'dart:io';
import 'package:console_application_for_reservation/menus/detail_menu.dart';
import 'package:console_application_for_reservation/menus/staffs_menu.dart';
import 'package:console_application_for_reservation/menus/welcome_menu.dart';
import 'package:console_application_for_reservation/services/navigator_service.dart';
import 'menu.dart';

class RestaurantMenuStaff extends Menu{
  static const id = "/restaurant_menu";

  @override
  build() async {
    print("Choose: ");
    // print(Menu.foodList);
    for(int i = 0; i < Menu.foodList.length; i++){
      print("$i - ${Menu.foodList[i].foodName} - \$${Menu.foodList[i].foodPrice}");
    }
    print(
        "(I) - GO BACK\n"
        "(II) - GO MAIN"
    );
    int? menuSelection = int.tryParse(stdin.readLineSync()!);
    if(menuSelection == null) {
      switch (menuSelection) {
        case "I":
          {
            await Navigator.push(StaffsMenu());
          }
          break;
        case "II":
          {
            await Navigator.push(WelcomeMenu());
          }
          break;
        default: build();
      }
    }
    else if(0 <= menuSelection && menuSelection <= Menu.foodList.length) {
      await Navigator.push(DetailMenu(foodIndex: menuSelection));
    }
  }
}