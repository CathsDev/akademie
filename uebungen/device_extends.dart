class Device {
  String brand;
  String model;

  Device(this.brand, this.model);

  void charge() {
    print("$brand $model is charging.");
  }
}

class Tablet extends Device {
  bool hasSupport;

  Tablet(super.brand, super.model, this.hasSupport);

  void draw() {
    if (hasSupport) {
      print("$brand $model drawing");
    } else {
      print("no drawing");
    }
  }
}

class Laptop extends Device {
  int ram;

  Laptop(super.brand, super.model, this.ram);

  void power() {
    print("$brand $model has $ram ram");
  }
}
