void parte2ejercicio1() {
  List<Map<String, dynamic>> articulos = [
    {"name": "Laptop", "price": 800},
    {"name": "Smartphone", "price": 400},
    {"name": "Tablet", "price": 150},
    {"name": "Monitor", "price": 300}
  ];

  // A
  List nombresArticulos =
      articulos.map((articulo) => articulo["name"]).toList();
  print('a. Nombres de los artículos: $nombresArticulos');

  // B
  List<Map<String, dynamic>> articulosPrecioMayor300 =
      articulos.where((articulo) => articulo["price"] > 300).toList();
  print('b. Artículos con precio mayor a 300: $articulosPrecioMayor300');

  // C
  List nombresArticulosPrecioMenor200 = articulos
      .where((articulo) => articulo["price"] < 200)
      .map((articulo) => articulo["name"])
      .toList();
  print(
      'c. Nombres de los artículos cuyo precio es menor a 200: $nombresArticulosPrecioMenor200');

  // D
  double sumaPreciosMayor200 = articulos
      .where((articulo) => articulo["price"] > 200)
      .map((articulo) => articulo["price"])
      .fold(0, (prev, precio) => prev + precio);
  print(
      'd. Suma de los precios de los artículos que cuestan más de 200 dólares: $sumaPreciosMayor200');

  // E
  String cadenaArticulos = articulos
      .map((articulo) => "${articulo["name"]} (\$${articulo["price"]})")
      .join(' - ');
  print('e. Artículos con precio entre paréntesis: $cadenaArticulos');
}

void parte2ejercicio2() {
  List<Map<String, dynamic>> personas = [
    {
      "name": "John",
      "birth": "2010-11-05",
      "favFruits": ["banana"]
    },
    {
      "name": "Mary",
      "birth": "2015-01-19",
      "favFruits": ["banana", "mango"]
    },
    {
      "name": "Bob",
      "birth": "1999-08-23",
      "favFruits": ["kiwi", "apple"]
    },
    {
      "name": "Sara",
      "birth": "1976-04-12",
      "favFruits": ["pear", "grapes"]
    }
  ];

  // A
  DateTime fechaActual = DateTime.now();
  List nombresMasDe20Anios = personas
      .where((persona) {
        DateTime fechaNacimiento = DateTime.parse(persona["birth"]);
        int edad = fechaActual.year - fechaNacimiento.year;
        return edad > 20;
      })
      .map((persona) => persona["name"])
      .toList();
  print('a. Nombres de personas con más de 20 años: $nombresMasDe20Anios');

  // B
  List<Map<String, String>> frutas = [
    {"name": "banana", "color": "yellow"},
    {"name": "apple", "color": "green"},
    {"name": "grapes", "color": "purple"},
    {"name": "pear", "color": "green"}
  ];

  List personasConFrutaAmarilla = personas
      .where((persona) {
        List<String> frutasFavoritas = persona["favFruits"];
        return frutasFavoritas.any((fruta) => frutas.any((frutaData) =>
            frutaData["name"] == fruta && frutaData["color"] == "yellow"));
      })
      .map((persona) => persona["name"])
      .toList();
  print(
      'b. Nombres de personas a las que les gusta una fruta amarilla: $personasConFrutaAmarilla');

  // C
  List<Map<String, dynamic>> personasConFrutaAmarillaYEdad =
      personas.where((persona) {
    List<String> frutasFavoritas = persona["favFruits"];
    return frutasFavoritas.any((fruta) => frutas.any((frutaData) =>
        frutaData["name"] == fruta && frutaData["color"] == "yellow"));
  }).map((persona) {
    DateTime fechaNacimiento = DateTime.parse(persona["birth"]);
    int edad = fechaActual.year - fechaNacimiento.year;
    return {"name": persona["name"], "age": edad};
  }).toList();
  print(
      'c. Personas a las que les gusta una fruta amarilla y su edad: $personasConFrutaAmarillaYEdad');
}
