import 'base.class.dart';
import 'pizzadata.class.dart';
import 'pizzaoptionsdata.class.dart';

class PizzaMenuData extends Base {
  PizzaOptionsData config;
  List<PizzaData> presets;

  //--------------------------------------------------------------------
  PizzaMenuData({required this.config, List<PizzaData>? presets})
      : presets = presets ?? [] {
    config.context = this;
    for (var preset in this.presets) {
      preset.context = this;
    }
  }

  //--------------------------------------------------------------------
  factory PizzaMenuData.fromJson(Map<String, dynamic> data) {
    PizzaOptionsData config = PizzaOptionsData.fromJson(data["config"]);
    return PizzaMenuData(
        config: config,
        presets: ((data["presets"] ?? []) as List)
            .map((preset) => PizzaData.fromJson(preset, config))
            .toList());
  }

  //--------------------------------------------------------------------
  Map<String, dynamic> toJson() {
    return {
      "config": config.toJson(),
      "presets": presets.map((e) => e.toJson()).toList()
    };
  }

  //--------------------------------------------------------------------
  PizzaMenuData copyWith({PizzaOptionsData? config, List<PizzaData>? presets}) {
    return PizzaMenuData(
        config: config ?? this.config.copyWith(),
        presets: presets ?? this.presets.map((e) => e.copyWith()).toList());
  }

  //--------------------------------------------------------------------
  @override
  String toString() {
    return toJson().toString();
  }
}
