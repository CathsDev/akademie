class Data {}

abstract class DatabaseRepository {
  void sendData(Data data); // create
  List<Data> getData(); // read
  List<Data> updateData(); // update
  List<Data> deleteData(); // delete
}

class MockDataRepository implements DatabaseRepository {
  List<String> data = [];

  @override
  void sendData(Data data) {
    // TODO: implement sendData
  }

  @override
  List<Data> getData() {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  List<Data> updateData() {
    // TODO: implement updateData
    throw UnimplementedError();
  }

  @override
  List<Data> deleteData() {
    // TODO: implement deleteData
    throw UnimplementedError();
  }
}

void main() {}
