import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:testsql/Models/Cliente.dart';

import 'DatabaseHelper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(SqliteApp());
}

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
                        email: email, password: textController.text),
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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
