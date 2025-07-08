void main(List<String> args) {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];

  int avg = 0;

  for (String n in names) {
    print('Teilnehmer: $n');
  }

  for (int p in points) {
    avg = avg + p;
  }

  print(
    'Der Durchschnitt beträgt: ${(avg / points.length).toStringAsPrecision(2)}',
  );
}
