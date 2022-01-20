import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:testsql/Models/Cliente.dart';
import 'DatabaseHelper.dart';

class SqliteApp extends StatefulWidget {
  const SqliteApp({Key? key}) : super(key: key);

  @override
  _SqliteAppState createState() => _SqliteAppState();
}

class _SqliteAppState extends State<SqliteApp> {
  String? email;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: textController,
          ),
        ),
        body: Center(
          child: FutureBuilder<List<Cliente>>(
              future: DatabaseHelper.instance.getAccounts(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Cliente>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: Text('Loading...'));
                }
                return snapshot.data!.isEmpty
                    ? Center(child: Text('No Accounts in List.'))
                    : ListView(
                        children: snapshot.data!.map((Cliente) {
                          return Center(
                            child: ListTile(
                              title: Text(Cliente.email),
                              onTap: () {
                                setState(() {
                                  textController.text = Cliente.email;
                                  email = Cliente.email;
                                });
                              },
                              onLongPress: () {
                                setState(() {
                                  DatabaseHelper.instance.remove(Cliente
                                      .email!); // TODO fix client negation
                                });
                              },
                            ),
                          );
                        }).toList(),
                      );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () async {
            email != null
                ? await DatabaseHelper.instance.update(
                    Cliente.account(
                        email: "hullo", password: textController.text),
                  )
                : await DatabaseHelper.instance.add(
                    Cliente.account(
                        email: textController.text,
                        password: '1'), // TODO implement password
                  );
            setState(() {
              textController.clear();
            });
          },
        ),
      ),
    );
  }
}
