void main() {
  double orderValue = 12.4;
  double distance = 11.2;
  bool rushHour = true;
  bool isRaining = true;
  int orderSize = 1;
  double distancePlus = 0.3;
  int distancePlusResult = 0;
  double deliveryCosts = 0;
  double maxCosts = orderValue * 0.4;
  double orderValueWithDeliveryCosts = 0;

  // Grundliefergebühr
  if (distance > 10) {
    deliveryCosts = deliveryCosts + 5;
    print('16: $deliveryCosts');
  } else if (distance > 5 && distance <= 10) {
    deliveryCosts = deliveryCosts + 3.5;
    print('19: $deliveryCosts');
  } else {
    deliveryCosts = 2.5;
    print('22: $deliveryCosts');
  }

  // Distanzzuschlag
  if (distance > 5) {
    distancePlusResult = (distance - 5).round();
    deliveryCosts = deliveryCosts + (distancePlusResult * distancePlus);
    print('29: $deliveryCosts');
  }

  // Wetterzuschlag
  if (isRaining) {
    deliveryCosts = deliveryCosts + 1.5;
    print('35: $deliveryCosts');
  }

  // Hauptverkehrszeitzuschlag
  if (rushHour) {
    deliveryCosts = deliveryCosts + 2;
    print('41: $deliveryCosts');
  }

  // Mengenrabatt
  if (orderSize >= 8) {
    deliveryCosts = deliveryCosts - 2;
    print('47: $deliveryCosts');
  } else if (orderSize >= 5) {
    deliveryCosts = deliveryCosts - 1;
    print('50: $deliveryCosts');
  } else if (orderSize >= 3) {
    deliveryCosts = deliveryCosts - 0.5;
    print('53: $deliveryCosts');
  }

  // Mindestbestellwert
  if (orderValue < 15) {
    deliveryCosts = deliveryCosts + 5;
    print('59: $deliveryCosts');
  }

  // Maximalkosten
  if (deliveryCosts > maxCosts) {
    deliveryCosts = maxCosts;
    print('65: $deliveryCosts');
  }

  orderValue = (orderValue * 10).round() / 10;
  deliveryCosts = (deliveryCosts * 10).round() / 10;

  orderValueWithDeliveryCosts = orderValue + deliveryCosts;

  String deliveryCostString = deliveryCosts.toStringAsFixed(2);
  String orderValueString = orderValue.toStringAsFixed(2);
  String orderValueWithDeliveryCostsString = orderValueWithDeliveryCosts
      .toStringAsFixed(2);

  print(
    'Gesamtbetrag: $orderValueWithDeliveryCostsString, Bestellsumme: $orderValueString, Lieferkosten: $deliveryCostString',
  );
}
