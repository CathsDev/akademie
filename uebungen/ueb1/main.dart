/*
  =============================================
  🧩 Wortsuche – Finde alle „XMAS“
  =============================================

  Ein kleiner Elf auf der Raumstation bittet um Hilfe bei einem Worträtsel.
  Gesucht wird das Wort: "XMAS".

  Das Wort kann in alle Richtungen im Raster versteckt sein:
    - Horizontal (von links nach rechts oder umgekehrt)
    - Vertikal (von oben nach unten oder umgekehrt)
    - Diagonal (in allen vier Diagonalrichtungen)

  Besonderheiten:
    - Wörter dürfen sich überlappen.
    - Es sollen **alle Vorkommen** des Wortes gezählt werden, nicht nur das erste.

  Beispiel:
    In einem Raster wie diesem:

      ..X...
      .SAMX.
      .A..A.
      XMAS.S
      .X....

    kann „XMAS“ mehrfach in verschiedenen Richtungen vorkommen.

  Aufgabe:
    Zähle alle Vorkommen des Wortes "XMAS" im folgenden Raster.

  =============================================
  */
void main() {
  // Das Raster (10x10 Buchstaben)
  List<String> grid = [
    'MMMSXXMASM',
    'MSAMXMSMSA',
    'AMXSXMAAMM',
    'MSAMASMSMX',
    'XMASAMXAMM',
    'XXAMMXXAMA',
    'SMSMSASXSS',
    'SAXAMASAAA',
    'MAMMMXMMMM',
    'MXMXAXMASX',
  ];

  // Gesuchtes Wort
  String word = 'XMAS';
  String word1 = 'SAMX';
  int counter = 0;

  for (var xmas in grid) {
    if (xmas.contains(word)) {
      counter += 1;
    }
    if (xmas.contains(word1)) {
      counter += 1;
    }
  }

  for (int i = 0; i < grid.length; i++) {}

  print("Anzahl: $counter");
}
