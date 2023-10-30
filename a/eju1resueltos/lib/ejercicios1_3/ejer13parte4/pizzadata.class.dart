import 'base.class.dart';
import 'dishoptiondata.class.dart';
import 'pizzaoptionsdata.class.dart';

class PizzaData extends Base {
  int? id;
  String? name;
  DishOptionData? size;
  DishOptionData? dough;
  List<DishOptionData> ingredients;
  DishOptionData? sauce;

  //--------------------------------------------------------------------
  PizzaData(
      {this.id,
      this.name,
      this.size,
      this.dough,
      List<DishOptionData>? ingredients,
      this.sauce})
      : ingredients = ingredients ?? [];

  //--------------------------------------------------------------------
  factory PizzaData.fromJson(
      Map<String, dynamic> data, PizzaOptionsData config) {
    List<DishOptionData> size, dough, sauce;

    size = config.sizes.where((d) => d.id == data["sizeId"]).toList();
    dough = config.doughs.where((d) => d.id == data["doughId"]).toList();
    sauce = config.sauces.where((d) => d.id == data["sauceId"]).toList();

    return PizzaData(
        id: data["id"],
        name: data["name"],
        size: size.isNotEmpty ? size[0] : null,
        dough: dough.isNotEmpty ? dough[0] : null,
        sauce: sauce.isNotEmpty ? sauce[0] : null,
        ingredients: ((data["ingredients"] ?? []).cast<int>())
            .map((id) {
              List<DishOptionData> ingredient =
                  config.ingredients.where((i) => i.id == id).toList();
              return (ingredient.isNotEmpty ? ingredient[0] : null);
            })
            .where((i) => i != null)
            .cast<DishOptionData>()
            .toList());
  }

  //--------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      if (name != null && name!.isNotEmpty) "name": name,
      if (size != null) "sizeId": size!.id,
      if (dough != null) "doughId": dough!.id,
      if (sauce != null) "sauceId": sauce!.id,
      if (ingredients.isNotEmpty)
        "ingredients": ingredients.map((e) => e.id).toList()
    };
  }

  //--------------------------------------------------------------------
  PizzaData copyWith(
      {int? id,
      String? name,
      DishOptionData? size,
      DishOptionData? dough,
      List<DishOptionData>? ingredients,
      DishOptionData? sauce}) {
    return PizzaData(
      id: id ?? this.id,
      name: name ?? this.name,
      size: size ?? (this.size != null ? this.size!.copyWith() : null),
      dough: dough ?? (this.dough != null ? this.dough!.copyWith() : null),
      ingredients:
          ingredients ?? this.ingredients.map((e) => e.copyWith()).toList(),
      sauce: sauce ?? (this.sauce != null ? this.sauce!.copyWith() : null),
    );
  }

  //--------------------------------------------------------------------
  @override
  String toString() {
    List<String> out = [
      "----------------- PizzaData ------------------",
      "Nombre: ${name ?? "Sin nombre"}${id != null ? " (id $id)" : " (sin id)"}",
      if (size != null) "Tamaño: ${size!.name}",
      if (dough != null) "Masa: ${dough!.name}",
      if (sauce != null) "Salsa: ${sauce!.name}",
      if (ingredients.isNotEmpty) ...[
        "Ingredientes:",
        ...ingredients.map((e) => "\t${e.toString()}")
      ]
    ];
    return out.join("\n");
  }
}
