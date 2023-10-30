import 'base.class.dart';

class DishOptionData extends Base {
  final int? id;
  final String? name;
  final double? price;

  //--------------------------------------------------------------------
  DishOptionData({this.id, this.name, this.price, Base? context})
      : super(context);

  //--------------------------------------------------------------------
  factory DishOptionData.fromJson(Map<String, dynamic> data) {
    return DishOptionData(
        id: data["id"],
        name: data["name"],
        price:
            (data["price"] is num) ? (data["price"] as num).toDouble() : null);
  }

  //--------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      if (id != null) "id": id,
      if (name != null) "name": name,
      if (price != null) "price": price
    };
  }

  //--------------------------------------------------------------------
  DishOptionData copyWith({int? id, String? name, double? price}) {
    return DishOptionData(
        id: id ?? this.id, name: name ?? this.name, price: price ?? this.price);
  }

  //--------------------------------------------------------------------
  @override
  String toString() {
    /*return toJson().toString();*/
    return [
      if (id != null) "$id${(name != null || price != null) ? ":" : ""}",
      if (name != null) name,
      if (price != null) "$price €"
    ].join(" ");
  }
}
