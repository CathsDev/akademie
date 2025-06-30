// User
class User {}

// Stimmung / Energie
// class MoodStatus {}

// Einzelene Aufgaben (Aufräumen)
class CleaningTask {}

// Einzelene Aufgaben (Tätigkeiten)
class ActivityTask {}

// Einzelene Aufgaben (Eigene)
class PrivatTask {}

// Aufgaben Arten (Bezogen auf Räume, bei Überforderung, nach Tätigkeiten)
// class TaskGroup {}

// Räume
class Zone {}

// App Einstellungen
// class AppSettings {}

abstract class DatabaseRepository {
  // void sendData(Data data); // create
  void createUser(User userData);
  void createCleaningTask(CleaningTask cTaskData);
  //void createActivityTask(ActivityTask aTaskData);
  //void createPrivatTask(PrivatTask pTaskData);
  void createZone(Zone zoneData);

  // List<Data> getData(); // read
  List<User> getUser(int id);
  List<CleaningTask> getAllCleaningTasks();
  List<CleaningTask> getCleaningTask(int id);
  //List<ActivityTask> getAllActivityTasks();
  //List<ActivityTask> getActivityTask(int id);
  //List<PrivatTask> getAllPrivatTasks();
  //List<PrivatTask> getPrivatTask(int id);
  List<Zone> getAllZones();
  List<Zone> getZone(int id);

  // List<Data> updateData(); // update
  List<User> updateUser(int id);
  List<CleaningTask> updateCleaningTask(int id);
  //List<ActivityTask> updateActivityTask(int id);
  //List<PrivatTask> updatePrivatTask(int id);
  List<Zone> updateZone(int id);

  // List<Data> deleteData(); // delete
  List<User> deleteUser(int id);
  List<CleaningTask> deleteCleaningTask(int id);
  //List<ActivityTask> deleteActivityTask(int id);
  //List<PrivatTask> deletePrivatTask(int id);
  List<Zone> deleteZone(int id);
}

class MockDataRepository implements DatabaseRepository {
  List<User> userData = [];
  List<CleaningTask> cTaskData = [];
  List<Zone> zoneData = [];

  @override
  void createUser(User userData) {
    // TODO: implement createUser
  }

  @override
  List<User> getUser(int id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  List<User> updateUser(int id) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  List<User> deleteUser(int id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  void createCleaningTask(CleaningTask cTaskData) {
    // TODO: implement createCleaningTask
  }

  @override
  List<CleaningTask> getAllCleaningTasks() {
    // TODO: implement getAllCleaningTasks
    throw UnimplementedError();
  }

  @override
  List<CleaningTask> getCleaningTask(int id) {
    // TODO: implement getCleaningTask
    throw UnimplementedError();
  }

  @override
  List<CleaningTask> updateCleaningTask(int id) {
    // TODO: implement updateCleaningTask
    throw UnimplementedError();
  }

  @override
  List<CleaningTask> deleteCleaningTask(int id) {
    // TODO: implement deleteCleaningTask
    throw UnimplementedError();
  }

  @override
  void createZone(Zone zoneData) {
    // TODO: implement createZone
  }

  @override
  List<Zone> getAllZones() {
    // TODO: implement getAllZones
    throw UnimplementedError();
  }

  @override
  List<Zone> getZone(int id) {
    // TODO: implement getZone
    throw UnimplementedError();
  }

  @override
  List<Zone> updateZone(int id) {
    // TODO: implement updateZone
    throw UnimplementedError();
  }

  @override
  List<Zone> deleteZone(int id) {
    // TODO: implement deleteZone
    throw UnimplementedError();
  }
}

void main() {}
