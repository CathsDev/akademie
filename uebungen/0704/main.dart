void main() {
  Map<String, List<double>> schuelerNoten = {};

  void addSchueler(Map<String, List<double>> noten, String name) {
    noten[name] = [];
  }

  void addNote(Map<String, List<double>> noten, String name, double note) {
    if (noten.containsKey(name)) {
      noten[name]?.add(note);
    } else {
      print('Fehler: Schüler ist nicht vorhanden.');
    }
  }

  double berechneDurchschnitt(List<double> noten) {
    double result = 0;
    double sum = 0;
    for (var n in noten) {
      sum = sum + n;
    }
    result = sum / noten.length;
    return result;
  }

  void zeigeAlleSchueler(Map<String, List<double>> noten) {
    print('=== Schülerübersicht ===');
    for (var schueler in schuelerNoten.entries) {
      double durchschnitt = berechneDurchschnitt(schueler.value);
      print(
        '${schueler.key}: ${schueler.value} - Durchschnitt: ${durchschnitt.toStringAsFixed(2)}',
      );
    }
    // print("${noten.keys}");
  }

  // Schüler hinzufügen
  addSchueler(schuelerNoten, "Max");
  addSchueler(schuelerNoten, "Anna");
  addSchueler(schuelerNoten, "Tom");
  // Noten hinzufügen
  addNote(schuelerNoten, "Max", 1.5);
  addNote(schuelerNoten, "Max", 2.0);
  addNote(schuelerNoten, "Anna", 1.0);
  addNote(schuelerNoten, "Anna", 1.5);
  addNote(schuelerNoten, "Anna", 2.0);
  addNote(schuelerNoten, "Tom", 2.5);
  addNote(schuelerNoten, "Tom", 3.0);
  // addNote(schuelerNoten, "Alex", 2.0);
  // ... weitere Noten
  // Alle Schüler anzeigen
  zeigeAlleSchueler(schuelerNoten);
}

// Implementiere hier deine Funktionen..
/*  Erwartete Ausgabe
  === Schülerübersicht ===
  Max: [1.5, 2.0] - Durchschnitt: 1.75
  Anna: [1.0, 1.5, 2.0] - Durchschnitt: 1.50
  Tom: [2.5, 3.0] - Durchschnitt: 2.75 */
