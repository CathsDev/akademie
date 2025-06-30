class Data {}

abstract class DataRepository {
  void sendData(Data data); // create
  List<Data> getData(); // read
  List<Data> updateData(); // update
  List<Data> deleteData(); // delete
}

void main() {}
