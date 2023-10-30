import 'dart:convert';
import 'dart:io';

import 'base.class.dart';
import 'pizzamenudata.class.dart';

class MenuData extends Base {
  PizzaMenuData? pizzas;

  //--------------------------------------------------------------------
  MenuData({this.pizzas}) {
    if (pizzas != null) pizzas!.context = this;
  }

  //--------------------------------------------------------------------
  factory MenuData.fromJson(Map<String, dynamic> data) {
    PizzaMenuData? pizzas = PizzaMenuData.fromJson(data["pizzas"]);

    return MenuData(pizzas: pizzas);
  }

  //--------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {if (pizzas != null) "pizzas": pizzas!.toJson()};
  }

  //--------------------------------------------------------------------
  MenuData copyWith({PizzaMenuData? pizzas}) {
    return MenuData(pizzas: pizzas ?? this.pizzas?.copyWith());
  }

  //--------------------------------------------------------------------
  @override
  String toString() {
    return toJson().toString();
  }

  //--------------------------------------------------------------------
  static Future<MenuData?> load({required String path}) async {
    try {
      String pizzaMenuDataStr = await File(path).readAsString();
      Map<String, dynamic> menuData = jsonDecode(pizzaMenuDataStr);
      return MenuData.fromJson(menuData);
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
