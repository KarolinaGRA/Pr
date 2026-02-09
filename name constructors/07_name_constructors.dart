void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true,
  };

  final ironMan = Hero.fromJson(rawJson);

  // final ironman = Hero(
  // isAlive: false,
  // power: 'Money),
  // name: 'Tony Stark
  //):}

  print(ironMan);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'Unknown';

  @override
  String toString() {
    return '$name, $power, ${isAlive ? 'YES!' : 'Nope'}';

  }
}
