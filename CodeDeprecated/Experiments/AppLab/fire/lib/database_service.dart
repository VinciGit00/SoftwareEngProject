import 'package:firebase_database/firebase_database.dart';

class DatabaseService {
  final database = FirebaseDatabase.instance.ref("users/123");
  DatabaseService();

  Future<void> addData(String name, String email, String password) async {
    await database.push().set({
      'name': name,
      'email': email,
      'password': password,
    });
  }

  Future<void> updateData(String name, String email, String password) async {
    await database.update({
      'name': name,
      'email': email,
      'password': password,
    });
  }

  Future<void> deleteData() async {
    await database.remove();
  }

  //read data from realtime database

  readData() async {
    DatabaseEvent event = await database.once();
    print(event.snapshot.value);
  }
}
