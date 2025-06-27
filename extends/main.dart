class Tool {
  String name;
  double weight;

  Tool(this.name, this.weight);
}

class Hammer extends Tool {
  String material;

  Hammer(super.name, super.weight, this.material);

  void madeFrom() {
    print("Der Hammer besteht aus $material.");
  }
}

class Saw extends Tool {
  int teeth;

  Saw(super.name, super.weight, this.teeth);

  void numberOfTeeth() {
    print("Die Säge hat insgesamt $teeth Zähne.");
  }
}

void main() {
  Hammer h1 = Hammer('Holzhammer', 1.2, 'Holz');
  Saw s1 = Saw('Stichsäge', 4.8, 18);

  h1.madeFrom();
  s1.numberOfTeeth();
}
