// Räume
class Zone {
  final String id;
  final String name;

  const Zone({required this.id, required this.name});

  Zone copyWith({String? id, String? name}) {
    return Zone(id: id ?? this.id, name: name ?? this.name);
  }

  factory Zone.empty() => const Zone(id: '', name: '');
}

abstract class DatabaseRepository {
  // Create
  Zone createZone(Zone zoneData);

  // Read
  List<Zone> get items;
  Zone? getZoneById(String id);

  // Update
  Zone updateZone(Zone updatedZone);

  // Delete
  void deleteZone(String id);
}

class OnlineDbRepository implements DatabaseRepository {
  @override
  Zone? getZoneById(String id) {
    // TODO: implement getZoneById
    throw UnimplementedError();
  }

  @override
  Zone createZone(Zone zoneData) {
    // TODO: implement createZone
    throw UnimplementedError();
  }

  @override
  // TODO: implement items
  List<Zone> get items => throw UnimplementedError();

  @override
  Zone updateZone(Zone updatedZone) {
    // TODO: implement updateZone
    throw UnimplementedError();
  }

  @override
  void deleteZone(String id) {
    // TODO: implement deleteZone
  }
}

class InMemoryZoneDB implements DatabaseRepository {
  final List<Zone> _items = [
    const Zone(id: '1', name: 'Wohnzimmer'),
    const Zone(id: '2', name: 'Schlafzimmer'),
    const Zone(id: '3', name: 'Küche'),
    const Zone(id: '4', name: 'Badezimmer'),
    const Zone(id: '5', name: 'Flur'),
    const Zone(id: '6', name: 'Balkon'),
  ];

  int _idCounter = 7;

  // Read
  List<Zone> get items => List.unmodifiable(_items);

  Zone? getZoneById(String id) => _items
      .where((z) => z.id == id)
      .cast<Zone?>()
      .firstWhere((z) => z != null, orElse: () => null);

  // Create
  Zone createZone(Zone zoneData) {
    final created = zoneData.copyWith(id: (_idCounter++).toString());
    _items.add(created);
    return created;
  }

  @override
  void updateZone(Zone updatedZone) {
    final i = _items.indexWhere((z) => z.id == updatedZone.id);
    if (i == -1) return;
    _items[i] = updatedZone;
  }

  @override
  void deleteZone(String id) {
    _items.removeWhere((z) => z.id == id);
  }
}

void main() {}
