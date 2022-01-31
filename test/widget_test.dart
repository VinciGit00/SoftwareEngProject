import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_database/firebase_database.dart';
/*import 'package:hair2/components/Wrong.dart';
import 'package:hair2/components/Temp.dart';
import 'package:hair2/components/Profilo.dart';
import 'package:hair2/components/PrenotazioniCliente.dart';
import 'package:hair2/components/Gestore.dart';
import 'package:hair2/components/Parrucchiere.dart';
import 'package:hair2/components/PrenotazioneClienti.dart';
import 'package:hair2/components/Changesetting.dart';
import 'package:hair2/components/NextPage.dart';
import 'package:hair2/components/InterfacciaPrincipale.dart';
import 'package:hair2/components/TuttePrenotazioniCliente.dart';
import 'package:hair2/components/Conferma2.dart';*/

void main() {
  testWidgets("Test per vedere se la widget Wrong funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SomethingWentWrong()));

    final messageFinder1 = find.text("Errore nella fase di caricamento");

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget profilo cliente funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Profilo()));

    final messageFinder1 = find.text("Profilo parrucchiere");
    final messageFinder2 = find.text("Nome:");
    final messageFinder3 = find.text("Indirizzo:");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Prenotazione cliente funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PrenotazioneCliente()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Parrucchiere funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(
        MaterialApp(home: Parrucchiere(nome: "nome", via: "via", rating: 4)));

    final messageFinder1 = find.text("nome");
    final messageFinder2 = find.text('via');

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget delle prenotazioni funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: PrenotazioneSingolaCliente(
            nome: "nome", via: "via", data: DateTime(2020 - 1 - 2))));

    final messageFinder1 = find.text("nome");
    final messageFinder2 = find.text('via');

    //Execute the test
    await tester.pump();

    //Check outputs
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget changeSetting funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: changeSetting()));

    final messageFinder1 = find.text("Cambia le impostazioni");
    final messageFinder2 = find.text('Inserisci il nuovo nickname');
    final messageFinder3 = find.text('Cambia la via');
    final messageFinder4 = find.text('Conferma le modifiche');

    //Execute the test
    final addButton1 = find.text('Conferma le modifiche');
    await tester.pump();

    //Check outputs
    await tester.tap(addButton1);
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
    expect(messageFinder4, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget nextpage funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: nextPage(
      nameStylist: "nome",
    )));

    final messageFinder1 = find.text("Seleziona la data e il tipo di taglio");
    final messageFinder2 = find.text('Inserisci il tipo di taglio');
    final messageFinder3 = find.text('Esegui richiesta');

    //Execute the test
    final addButton1 = find.text('Esegui richiesta');
    await tester.pump();

    //Check outputs
    await tester.tap(addButton1);
    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget InterfacciaPrincipale funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: InterfacciaPrincipale()));

    final messageFinder1 = find.text("Welcome in TruccoParrucco");
    final messageFinder2 = find.text('Modalità:');
    final messageFinder3 = find.text('Cliente');
    final messageFinder4 = find.text('Parrucchiere');

    //Execute the test
    final addButton1 = find.text('Home');
    final addButton2 = find.text('Prenotazioni');

    await tester.pump();

    //Check outputs
    await tester.tap(addButton1);
    await tester.tap(addButton2);

    expect(messageFinder1, findsOneWidget);
    expect(messageFinder2, findsOneWidget);
    expect(messageFinder3, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget TuttePrenotazioniClienti funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PrenotazioneCliente()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    //Execute the test
    await tester.pump();

    //Check outputs

    expect(messageFinder1, findsOneWidget);
  });

  testWidgets("Test per vedere se la widget Conferma2 funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Conferma2()));

    final messageFinder1 = find.text("Modifiche avvenute con successo!");

    //Execute the test
    final addButton1 = find.text('Torna alla schermata principale');

    await tester.pump();

    //Check outputs
    await tester.tap(addButton1);

    expect(messageFinder1, findsOneWidget);
  });
}

/**
 * Classi che servono per fare partire i test
 * è stato necessario fare una copia delle classi per 
 * far partite correttamente Travis CI
 * perchè non riusciva a fare l'import
 */

class user extends ChangeNotifier {
  late String email;
  late String nick;
  late String street;
  final database = FirebaseDatabase.instance;

  user._privateConstructor() {
    this.email = "";
    this.nick = "";
    this.street = "";
    getUserInfo();
  } //pattern to create a singleton
  static late final user _instance = user._privateConstructor();
  factory user() => _instance;

  /*Future<void> addUserInfo(String email, String nick, String street) async {
    var directory = await database.ref('users');
    var event = await directory.orderByChild('email').equalTo(email).once();
    var t = event.snapshot.value as List<dynamic>;

    if (t != null) {
      var mappy = t[0] as Map<dynamic, dynamic>;
      await database.ref('users/' + mappy['nick']).remove();
    }

    this.email = email;
    this.nick = nick;
    this.street = street;

    await database.ref('users/' + nick).update({
      'email': email,
      'nick': nick,
      'street': street,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> getUserInfo() async {
    var directory = await database.ref('users');
    var event = await directory
        .orderByChild('email')
        .equalTo(FirebaseAuth.instance.currentUser!.email!)
        .once();

    var t = event.snapshot.value as List<dynamic>;
    var mappy = t[0] as Map<dynamic, dynamic>;

    if (mappy != null) {
      print(mappy['email']);
      this.email = mappy['email'];
      this.nick = mappy['nick'];
      this.street = mappy['street'];
    }
  }*/

  Future<void> addUserInfo(String email, String nick, String street) async {
    var directory = await database.ref('users');
    var event = await directory.orderByChild('email').equalTo(email).once();

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) async {
        print(values);
        await database.ref('users/' + values['nick']).remove();
      });
    }

    this.email = email;
    this.nick = nick;
    this.street = street;

    await database.ref('users/' + nick).update({
      'email': email,
      'nick': nick,
      'street': street,
      'inputDate': DateTime.now().toString(),
    });
  }

  Future<void> getUserInfo() async {
    var directory = await database.ref('users');
    var event = await directory.orderByChild('email').once();

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) async {
        print(values);
        this.email = values['email'];
        this.nick = values['nick'];
        this.street = values['street'];
      });
    } else {
      this.nick = 'no nick';
      this.street = 'no street';
    }
  }

  String get nickname => nick;
  String get streetname => street;
}

class Stylist {
  final String? id;
  final String? email;
  final String? nick;
  final String? street;
  //final int? stars;

  Stylist({this.id, this.email, this.nick, this.street});
}

class stylistBookings extends ChangeNotifier {
  List<booking> _bookings = [];
  final _db = FirebaseDatabase.instance;

  stylistBookings(email) {
    // _ReadBookings(email);
  }

  void _ReadBookings(email) async {
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('stylistEmail').equalTo(email).once();

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      print(values);
      _bookings.add(booking(key, values['clientEmail'], values['stylistEmail'],
          values['type'], DateTime.parse(values['appointmentDate'])));
    });

    //notifyListeners();
  }

  Future<void> ReadBooking(email) async {
    _bookings.clear();
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('stylistEmail').equalTo(email).once();

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) {
        print(values);
        _bookings.add(booking(
            key,
            values['clientEmail'],
            values['stylistEmail'],
            values['type'],
            DateTime.parse(values['appointmentDate'])));
      });
    }

    //notifyListeners();
  }

  //create a getter for bookings
  List<booking> get bookings => _bookings;
}

class clientBookings extends ChangeNotifier {
  List<booking> _bookings = [];
  final _db = FirebaseDatabase.instance;

  clientBookings(email) {
    //_ReadBookings(email);
  }

  void _ReadBookings(email) async {
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('clientEmail').equalTo(email).once();

    Map<dynamic, dynamic> values =
        event.snapshot.value as Map<dynamic, dynamic>;
    values.forEach((key, values) {
      print(values);
      _bookings.add(booking(key, values['clientEmail'], values['stylistEmail'],
          values['type'], DateTime.parse(values['appointmentDate'])));
    });

    //notifyListeners();
  }

  Future<void> ReadBooking(email) async {
    _bookings.clear();
    var directory = await _db.ref('bookings');
    var event =
        await directory.orderByChild('clientEmail').equalTo(email).once();

    if (event.snapshot.value != null) {
      Map<dynamic, dynamic> values =
          event.snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, values) {
        print(values);
        _bookings.add(booking(
            key,
            values['clientEmail'],
            values['stylistEmail'],
            values['type'],
            DateTime.parse(values['appointmentDate'])));
      });
    }

    //notifyListeners();
  }

  //create a getter for bookings
  List<booking> get bookings => _bookings;
}

class booking {
  String key;
  String clientEmail;
  String stylistEmail;
  String type;
  DateTime appointmentDate;

  booking(this.key, this.clientEmail, this.stylistEmail, this.type,
      this.appointmentDate);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['clientEmail'] = clientEmail;
    map['stylistEmail'] = stylistEmail;
    map['type'] = type;
    map['appointmentDate'] = appointmentDate.toString();
    return map;
  }
}

class Client {
  // Field
  String email = 'default@email.com';

  //Constructor
  Client.fromSnapshot(String email) {
    this.email = email;
  }

  Client.fromSnapshot2() {}

  //Ovverride del costruttore

  // Functions
  void leggiPrenotazione() {}

  void ScriviPrenotazione() {}
}

class Buffer extends StatefulWidget {
  const Buffer({Key? key}) : super(key: key);

  @override
  _BufferState createState() => _BufferState();
}

class _BufferState extends State<Buffer> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 1),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _calculation,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.hasError) {
                return SomethingWentWrong();
              }
              return temp();
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    strokeWidth: 6.0,
                  ));
            }
          }),
    );
  }
}

class BufferModifiche extends StatefulWidget {
  const BufferModifiche({Key? key}) : super(key: key);

  @override
  _BufferModificheState createState() => _BufferModificheState();
}

class _BufferModificheState extends State<BufferModifiche> {
  final Future<String> _calculation = Future<String>.delayed(
    const Duration(seconds: 1),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _calculation,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.hasError) {
                return SomethingWentWrong();
              }
              return Conferma2();
            } else {
              return Container(
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(
                    strokeWidth: 6.0,
                  ));
            }
          }),
    );
  }
}

class changeSetting extends StatefulWidget {
  const changeSetting({Key? key}) : super(key: key);

  @override
  _changeSettingState createState() => _changeSettingState();
}

class _changeSettingState extends State<changeSetting> {
  final TextEditingController _nicknameTEC = TextEditingController();
  final TextEditingController _streetTEC = TextEditingController();
  // var _db =  DatabaseService(); // TODO change the way we access the database class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Cambia le impostazioni",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
            controller: _nicknameTEC,
            obscureText: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.zoom_out_sharp),
              border: OutlineInputBorder(),
              labelText: 'Inserisci il nuovo nickname',
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              controller: _streetTEC,
              obscureText: false,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.zoom_out_sharp),
                border: OutlineInputBorder(),
                labelText: 'Cambia la via',
              ),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          child: RaisedButton(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: const Text(
                "Conferma le modifiche",
                style: TextStyle(color: Colors.white),
              ),
              //color: Colors.blue,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: () {
                var _nickname = _nicknameTEC.text;
                var _street = _streetTEC.text;
                print("Nickname: " + _nickname);
                print("Street: " + _street);
                if (_nicknameTEC.text != "" || _streetTEC.text != "") {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const BufferModifiche()));
                } else {
                  final snackBar = SnackBar(
                      content: const Text(
                          'Compila tutti i campi prima di inviare le modifiche!'),
                      action: SnackBarAction(
                        label: 'Chiudi banner',
                        onPressed: () {},
                      ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }),
        )
      ]),
    );
  }
}

class Conferma2 extends StatefulWidget {
  const Conferma2({Key? key}) : super(key: key);

  @override
  _Conferma2State createState() => _Conferma2State();
}

class _Conferma2State extends State<Conferma2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Modifiche avvenute con successo!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: const Text(
                  "Torna alla schermata principale",
                  style: TextStyle(color: Colors.white),
                ),
                //color: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const InterfacciaPrincipale()));
                }),
          ),
        ],
      ),
    );
  }
}

class confermamodifiche extends StatefulWidget {
  const confermamodifiche({Key? key}) : super(key: key);

  @override
  _confermamodificheState createState() => _confermamodificheState();
}

class _confermamodificheState extends State<confermamodifiche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Prenotazione confermata!",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: const Text(
                  "Torna alla schermata principale",
                  //style: TextStyle(color: Colors.white),
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const InterfacciaPrincipale()));
                }),
          ),
        ],
      ),
    );
  }
}

class InterfacciaPrincipale extends StatefulWidget {
  const InterfacciaPrincipale({Key? key}) : super(key: key);

  @override
  _InterfacciaPrincipaleState createState() => _InterfacciaPrincipaleState();
}

class _InterfacciaPrincipaleState extends State<InterfacciaPrincipale> {
  bool state1 = false;
  bool state2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        //backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              //color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (context) => Settings()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            const Text(
              "Welcome in TruccoParrucco",
              style: TextStyle(
                //color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            state2 == false
                ? const Text(
                    "Scegli il parrucchiere dove tagliare i capelli",
                    style: TextStyle(
                      //color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                : const Text(
                    "Guarda i clienti che hanno prenotato il taglio di capelli",
                    style: TextStyle(
                      //color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
            const SizedBox(
              height: 6.5,
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Abilita la possibilità di tagliare capelli:",
                      style: TextStyle(
                        //color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    child: const Text(
                      "Si",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Switch(
                    value: state1,
                    onChanged: (bool s) {
                      setState(() {
                        state1 = s;
                      });
                    },
                    /*activeColor: Colors.blue,
                      activeTrackColor: Colors.blue,*/
                    inactiveThumbColor: Colors.green,
                  ),
                  const Text(
                    "No",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  const Text(
                    "Modalità:",
                    style: TextStyle(
                      //color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    child: const Text(
                      "Cliente",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Switch(
                    value: state2,
                    onChanged: state1 == false
                        ? (bool s) {
                            setState(() {
                              state2 = s;
                            });
                          }
                        : (bool) {
                            final snackBar = SnackBar(
                                content: const Text(
                                    'Non puoi tagliare prenotazioni se non dai la disponibilità!'),
                                action: SnackBarAction(
                                  label: 'Chiudi banner',
                                  onPressed: () {},
                                ));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                    /*activeColor: Colors.blue,
                    activeTrackColor: Colors.blue,*/
                    inactiveThumbColor: Colors.green,
                  ),
                  const Text(
                    "Parrucchiere",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 150.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      padding: const EdgeInsets.all(
                          20) //content padding inside button

                      ),
                  onPressed: () {},
                  child: const Text("Sign out"),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // unselectedItemColor: Color(0xFFB7B7B7),
        // selectedItemColor: Color(0xFF)Colors.blue,
        elevation: 10,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                if (state2 == true) {
                } else {}
              },
            ),
            label: "Prenotazioni",
          ),
        ],
      ),
    );
  }
}

class nextPage extends StatefulWidget {
  const nextPage({Key? key, required this.nameStylist}) : super(key: key);

  final String nameStylist;

  @override
  _nextPageState createState() => _nextPageState();

  String onPressed2() {
    return "Pressed";
  }
}

class _nextPageState extends State<nextPage> {
  late DateTime date;

  void onPressed() {
    print("Pressed");
  }

  DateTime _dateTime = DateTime.now();

  late String choice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Seleziona la data e il tipo di taglio",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: const Text(
            "Seleziona il giorno",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        //prefixIcon: Icon(Icons.calendar_month),

        Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(_dateTime == null
                  ? 'Nessuna data selezionata'
                  : _dateTime.day.toString() +
                      "/" +
                      _dateTime.month.toString()),
              RaisedButton(
                child: Text("Cambia data"),
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2001),
                          lastDate: DateTime(2025))
                      .then((date) {
                    setState(() {
                      _dateTime = date!;
                    });
                  });
                },
              )
            ],
          ),
        ),

        Flexible(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: [
                const Text(
                  "Inserisci il tipo di taglio",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                PopupMenuButton<MenuItem>(
                  onSelected: (item) => setState(() {
                    choice = item.text;
                  }),
                  itemBuilder: (context) => [
                    ...TipoTaglio.itemFirst.map(buildItem).toList(),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    choice,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                RaisedButton(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                  child: const Text(
                    "Esegui richiesta",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  elevation: 4.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => const Buffer()));
                  },
                  //child: Icon(Icons.send, color: Colors.white)
                )
              ],
            )),
      ]),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: Colors.black, size: 10),
          Text(item.text)
        ],
      ));

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.parse("20250101"),
    );
    if (newDate == null) return;

    setState(() => date = newDate);
  }
}

class TipoTaglio {
  static const List<MenuItem> itemFirst = [a, b, c, d, e];

  static const a = MenuItem(
      text: "Piega",
      category: "Semplice",
      icon: IconData(0xf535, fontFamily: 'MaterialIcons'));

  static const b = MenuItem(
      text: "Shampoo",
      category: "Semplice",
      icon: IconData(0xf535, fontFamily: 'MaterialIcons'));

  static const c = MenuItem(
      text: "Colore",
      category: "Semplice",
      icon: IconData(0xee49, fontFamily: 'MaterialIcons'));

  static const d = MenuItem(
      text: "Permamente",
      category: "Semplice",
      icon: IconData(0xee49, fontFamily: 'MaterialIcons'));

  static const e = MenuItem(
      text: "Shatsuch",
      category: "Semplice",
      icon: IconData(0xee49, fontFamily: 'MaterialIcons'));
}

class MenuItem {
  final String text;
  final String category;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.category,
    required this.icon,
  });
}

class Profilo extends StatefulWidget {
  const Profilo({Key? key}) : super(key: key);

  @override
  _ProfiloState createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Profilo parrucchiere",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(12),
          child: const Text("Nome:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(12),
          child: const Text("Indirizzo:",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
        ),
      ]),
    );
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    user().getUserInfo();
    String nome = user().nick;
    String via = user().street;
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Impostazioni utente",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          "Nome: " + nome,
          style: const TextStyle(fontSize: 20),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Text("Via:" + via, style: const TextStyle(fontSize: 20)),
        ),
        RaisedButton(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: const Text(
              "Cambia le impostazioni",
              style: TextStyle(color: Colors.white),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            elevation: 4.0,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                      builder: (context) => const changeSetting()));
            }),
        FutureBuilder(
          future: user().getUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Text(
                "Nome: " + user().nick,
                style: TextStyle(fontSize: 20),
              );
            } else {
              return const Text("loading");
            }
          },
        ),
      ]),
    );
  }
}

class temp extends StatefulWidget {
  const temp({Key? key}) : super(key: key);

  @override
  _tempState createState() => _tempState();
}

class _tempState extends State<temp> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: const Text(
              "Prenotazione avvenuta con successo!",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: RaisedButton(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: const Text(
                  "Torna alla schermata principale",
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => const InterfacciaPrincipale()));
                }),
          ),
        ],
      ),
    );
  }
}

class StylistListWidget extends StatelessWidget with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                "ORDERS",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("empty button"),
              ),
            ],
          ),
        ));
  }
}

class Parrucchiere extends StatefulWidget {
  const Parrucchiere(
      {Key? key, required this.nome, required this.via, required this.rating})
      : super(key: key);

  final String nome;
  final String via;
  final int rating;

  @override
  State<Parrucchiere> createState() => _ParrucchiereState();
}

class PrenotazioneSingolaCliente extends StatefulWidget {
  const PrenotazioneSingolaCliente(
      {Key? key, required this.nome, required this.via, required this.data})
      : super(key: key);

  final String nome;
  final String via;
  final DateTime data;

  @override
  State<PrenotazioneSingolaCliente> createState() =>
      _PrenotazioneSingolaClienteState();
}

class _PrenotazioneSingolaClienteState
    extends State<PrenotazioneSingolaCliente> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        right: 22.0,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0.0,
      shadowColor: Colors.black,
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 200.0,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nome,
                        style: const TextStyle(
                          ///color: Colors.blue,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        widget.via,
                        style: const TextStyle(
                          //color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.data.toString(),
                        style: const TextStyle(
                          // color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ParrucchiereState extends State<Parrucchiere> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(
        right: 22.0,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0.0,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => nextPage(nameStylist: widget.nome)));
        },
        child: Container(
          width: 200.0,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (var i = 0; i < widget.rating; i++)
                      const Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nome,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        widget.via,
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SomethingWentWrong extends StatefulWidget {
  const SomethingWentWrong({Key? key}) : super(key: key);

  @override
  _SomethingWentWrongState createState() => _SomethingWentWrongState();
}

class _SomethingWentWrongState extends State<SomethingWentWrong> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const Text("Errore nella fase di caricamento"),
    );
  }
}

class PagGestore extends StatefulWidget {
  const PagGestore({Key? key}) : super(key: key);

  @override
  _PagGestoreState createState() => _PagGestoreState();
}

class _PagGestoreState extends State<PagGestore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Prenotazioni dei clienti",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            /**Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "AAAAAA",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                ],
              ),
            )*/
          ],
        ),
      ),
    );
  }
}

class PrenotazioneCliente extends StatefulWidget {
  const PrenotazioneCliente({Key? key}) : super(key: key);

  @override
  _PrenotazioneClienteState createState() => _PrenotazioneClienteState();
}

class _PrenotazioneClienteState extends State<PrenotazioneCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Prenotazioni effettuate",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            /**Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: PrenotazioneSingolaCliente(
                        nome: "nome",
                        via: "via",
                        data: new DateTime(2020 - 1 - 2)),
                  ),
                ],
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
