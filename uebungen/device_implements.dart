abstract class Device {
  /* String brand;
  String model;

  Device(this.brand, this.model); */

  late String brand;
  late String model;

  void charge() {
    print("is charging.");
  }
}

class Tablet extends Device {
  //Tablet(super.brand, super.model);
  @override
  void charge() {
    // TODO: implement charge
    super.charge();
  }
}

class Laptop extends Device {
  //int ram;

  //Laptop(super.brand, super.model, this.ram);

  /* void power() {
    print("$brand $model has $ram ram");
  } */
}

abstract class Fahrzeug {
  int geschwindigkeit = 0;

  void starten(); // abstrakt
  void stoppen() => print("Fahrzeug stoppt."); // konkret
}

class Auto extends Fahrzeug {
  @override
  void starten() => print("Auto startet.");
}
