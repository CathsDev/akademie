class Grocery {
  String name;
  String producer;
  double weight;
  double price;

  Grocery(this.name, this.producer, this.weight, this.price);

  void showProducer() {
    print('$producer ist der Hersteller des Pruduktes.');
  }

  void showWeight() {
    print('Es hat ein Gewicht von $weight.');
  }
}

class Bread extends Grocery {
  String type;

  Bread(super.name, super.producer, super.weight, super.price, this.type);

  @override
  void showProducer() {
    super.showProducer();
    print("Die Art ist $type");
  }
}

class Cheese extends Grocery {
  String storage;

  Cheese(super.name, super.producer, super.weight, super.price, this.storage);

  @override
  void showWeight() {
    print("Das Gewicht pro Kilo beträgt $price");
  }

  void howToStorage() {
    print("Es muss $storage gelagert werden.");
  }
}

void main() {
  Bread toast = Bread('Toastbrot', 'Harry', 250, 2.5, 'Vollkorn');
  Cheese cheddar = Cheese('Cheddar', 'Kerrygold', 120, 3.75, 'kühl');

  toast.showProducer();
  cheddar.showWeight();
}
