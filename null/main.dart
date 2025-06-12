void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Erstelle leere Liste für Temperaturen
  List<double?> temps = [];
  double? avgTemp = 0;

  // Füge die Temperaturen der Wetterdaten in die Liste ein
  for (var i = 0; i < weatherData.length; i++) {
    if (weatherData[i]['temp'] != null) {
      temps.add(weatherData[i]['temp']);
      avgTemp = avgTemp! + temps[i]!;
    }
  }
  // temps.add(weatherData[0]['temp']);
  // temps.add(weatherData[1]['temp']);
  // temps.add(weatherData[2]['temp']);

  // Berechne den Durchschnitt der Temperaturen
  // double? avgTemp = (temps[0]! + temps[1]! + temps[2]!) / 3;
  avgTemp = avgTemp! / temps.length;
  print('Durchschnittstemperatur: $avgTemp');
}
