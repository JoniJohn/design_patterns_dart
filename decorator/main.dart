/// Base Decorator
abstract class Beverage {
  double get getCost;
  String get getIngredients;
}

/// Base Decorator
abstract class Ingredients implements Beverage {
  final Beverage beverage;

  Ingredients(this.beverage);
}

/// Concrete Component
class Coffee implements Beverage {
  @override
  double get getCost => 12.0;

  @override
  String get getIngredients => "Basic Coffee";
}

/// Concret Decorator
class Milk extends Ingredients {
  Milk(Beverage beverage) : super(beverage);

  @override
  double get getCost => beverage.getCost + .90;

  @override
  String get getIngredients => beverage.getIngredients + ", Milk";
}

/// Concret Decorator
class Sugar extends Ingredients {
  Sugar(Beverage beverage) : super(beverage);

  @override
  double get getCost => beverage.getCost + .50;

  @override
  String get getIngredients => beverage.getIngredients + ", Sugar";
}

/// Client : Beverage Maker
void main() {
  var latte = Milk(Sugar(Coffee()));

  print("Latte Cost: ${latte.getCost}");
  print("Latte Ingredients: ${latte.getIngredients}");
}
