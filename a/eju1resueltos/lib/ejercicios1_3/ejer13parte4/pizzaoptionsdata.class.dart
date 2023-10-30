import 'base.class.dart';
import 'dishoptiondata.class.dart';

class PizzaOptionsData extends Base {
  List<DishOptionData> sizes;
  List<DishOptionData> doughs;
  List<DishOptionData> ingredients;
  List<DishOptionData> sauces;

  //--------------------------------------------------------------------
  PizzaOptionsData(
      {List<DishOptionData>? sizes,
      List<DishOptionData>? doughs,
      List<DishOptionData>? ingredients,
      List<DishOptionData>? sauces})
      : sizes = sizes ?? [],
        doughs = doughs ?? [],
        ingredients = ingredients ?? [],
        sauces = sauces ?? [] {
    for (var size in this.sizes) {
      size.context = this;
    }
    for (var dough in this.doughs) {
      dough.context = this;
    }
    for (var ingredient in this.ingredients) {
      ingredient.context = this;
    }
    for (var sauce in this.sauces) {
      sauce.context = this;
    }
  }

  //--------------------------------------------------------------------
  factory PizzaOptionsData.fromJson(Map<String, dynamic> data) {
    return PizzaOptionsData(
      sizes: List.from((data["sizes"] as List?) ?? [])
          .map((e) => DishOptionData.fromJson(e))
          .toList(),
      doughs: List.from((data["doughs"] as List?) ?? [])
          .map((e) => DishOptionData.fromJson(e))
          .toList(),
      ingredients: List.from((data["ingredients"] as List?) ?? [])
          .map((e) => DishOptionData.fromJson(e))
          .toList(),
      sauces: List.from((data["sauces"] as List?) ?? [])
          .map((e) => DishOptionData.fromJson(e))
          .toList(),
    );
  }

  //--------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      if (sizes.isNotEmpty) "sizes": sizes.map((e) => e.toJson()).toList(),
      if (doughs.isNotEmpty) "doughs": doughs.map((e) => e.toJson()).toList(),
      if (ingredients.isNotEmpty)
        "ingredients": ingredients.map((e) => e.toJson()).toList(),
      if (sauces.isNotEmpty) "sauces": sauces.map((e) => e.toJson()).toList()
    };
  }

  //--------------------------------------------------------------------
  PizzaOptionsData copyWith(
      {List<DishOptionData>? sizes,
      List<DishOptionData>? doughs,
      List<DishOptionData>? ingredients,
      List<DishOptionData>? sauces}) {
    return PizzaOptionsData(
      sizes: sizes ?? this.sizes.map((e) => e.copyWith()).toList(),
      doughs: doughs ?? this.doughs.map((e) => e.copyWith()).toList(),
      ingredients:
          ingredients ?? this.ingredients.map((e) => e.copyWith()).toList(),
      sauces: sauces ?? this.sauces.map((e) => e.copyWith()).toList(),
    );
  }

  //--------------------------------------------------------------------
  @override
  String toString() {
    return toJson().toString();
  }
}
