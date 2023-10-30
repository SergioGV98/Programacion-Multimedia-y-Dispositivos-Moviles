import 'ejer13parte4/menudata.class.dart';
import 'ejer13parte4/pizzadata.class.dart';

Future<void> parte4() async {
  print("\nPARTE 4\n");
  MenuData? menu = await MenuData.load(path: "data/menu-pizzeria.json");
  print(menu);

  for (PizzaData preset in (menu?.pizzas?.presets ?? [])) {
    print(preset);
  }
}
