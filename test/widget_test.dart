import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
import 'package:hair2/components/ConfermaModifiche.dart';

void main() {
  testWidgets('Testo la classe chosen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Chosen()));

    final messageFinder = find.text("Scegli una modalità");

    final addButton1 = find.text('Cliente');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

    //expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
  testWidgets("Test per vedere se la widget Wrong funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SomethingWentWrong()));

    final messageFinder1 = find.text("Errore nella fase di caricamento");

    //Check outputs
    expect(messageFinder1, findsOneWidget);
  });
  testWidgets("Test per vedere se la widget temp funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: temp()));

    final messageFinder1 = find.text("Prenotazione confermata!");
    final addButton1 = find.text('Torna alla schermata principale');

    //Execute the test
    await tester.tap(addButton1);
    await tester.pump();

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

  testWidgets("Test per vedere se la widget Gestore funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PagGestore()));

    final messageFinder1 = find.text("Prenotazioni effettuate");

    final addButton1 = find.text('Prenotazioni');
    final addButton2 = find.text('Profilo');

    //Execute the test
    await tester.tap(addButton1);
    await tester.tap(addButton2);
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
    await tester.pumpWidget(MaterialApp(home: nextPage()));

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

  testWidgets("Test per vedere se la widget ConfermaModifiche funziona",
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: confermaModifiche()));

    final messageFinder1 = find.text("Prenotazione confermata!");

    //Execute the test
    final addButton1 = find.text('Torna alla schermata principale');

    await tester.pump();

    //Check outputs
    await tester.tap(addButton1);

    expect(messageFinder1, findsOneWidget);
  });
}

/**
 * TUTTE LE CLASSI
 * N.B: è stata fatta questa procedura per renderere
 * possibile l'utilizzo di Travis CI, altrimenti 
 * non funzionava l'import di travis CI
 */

class Chosen extends StatefulWidget {
  Chosen({Key? key}) : super(key: key);

  @override
  _ChosenState createState() => _ChosenState();
}

class _ChosenState extends State<Chosen> {
  bool state = true;

  void onPressed() {
    print("Pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (context) => Settings()));
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Scegli una modalità",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Cliente",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (context) => Chosen()));
                }),
          ),
          RaisedButton(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
            child: Text(
              "Parrucchiere",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))),
            elevation: 4.0,
            onPressed: () {
              if (state == true) {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => PagGestore()));
              } else {
                final snackBar = SnackBar(
                  content: const Text(
                      'Non puoi accettare prenotazioni se non abiliti lo switch'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
          ),
          Container(
              margin: EdgeInsets.all(9),
              child: Text(
                "Abilita la possibilità di tagliare capelli",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              )),
          Switch(
            value: state,
            onChanged: (bool s) {
              setState(() {
                state = s;
              });
            },
          ),
        ],
      ),
    );
  }
}

class SomethingWentWrong extends StatefulWidget {
  SomethingWentWrong({Key? key}) : super(key: key);

  @override
  _SomethingWentWrongState createState() => _SomethingWentWrongState();
}

class _SomethingWentWrongState extends State<SomethingWentWrong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Errore nella fase di caricamento"),
    );
  }
}

class temp extends StatefulWidget {
  temp({Key? key}) : super(key: key);

  @override
  _tempState createState() => _tempState();
}

class _tempState extends State<temp> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Prenotazione confermata!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Torna alla schermata principale",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (context) => Chosen()));
                }),
          ),
        ],
      ),
    );
  }
}

class PagGestore extends StatefulWidget {
  PagGestore({Key? key}) : super(key: key);

  @override
  _PagGestoreState createState() => _PagGestoreState();
}

class _PagGestoreState extends State<PagGestore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
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
            //Let's start by adding the text
            Text(
              "Prenotazioni effettuate",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Prenotazioni",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(IconData(0xf01f3, fontFamily: 'MaterialIcons')),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (context) => Profilo()));
              },
            ),
            label: "Profilo",
          ),
        ],
      ),
    );
  }
}

class Profilo extends StatefulWidget {
  Profilo({Key? key}) : super(key: key);

  @override
  _ProfiloState createState() => _ProfiloState();
}

class _ProfiloState extends State<Profilo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Profilo parrucchiere",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(12),
          child: Text("Nome:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(12),
          child: Text("Indirizzo:",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
        ),
      ]),
    );
  }
}

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Impostazioni utente",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ]),
    );
  }
}

class PrenotazioneCliente extends StatefulWidget {
  PrenotazioneCliente({Key? key}) : super(key: key);

  @override
  _PrenotazioneClienteState createState() => _PrenotazioneClienteState();
}

class _PrenotazioneClienteState extends State<PrenotazioneCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Prenotazioni effettuate",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ]),
    );
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

class _ParrucchiereState extends State<Parrucchiere> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        right: 22.0,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0.0,
      shadowColor: Colors.black,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute<void>(builder: (context) => nextPage()));
        },
        child: Container(
          width: 200.0,
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (var i = 0; i < widget.rating; i++)
                      Icon(
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
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        widget.via,
                        style: TextStyle(
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

class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  _nextPageState createState() => _nextPageState();

  String onPressed2() {
    return "Pressed";
  }
}

class _nextPageState extends State<nextPage> {
  void onPressed() {
    print("Pressed");
  }

  late String choice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Seleziona la data e il tipo di taglio",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "Seleziona il giorno ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        //prefixIcon: Icon(Icons.calendar_month),
        Text(
          "Inserisci il tipo di taglio",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),

        Container(
          margin: EdgeInsets.all(5),
          child: Text(
            choice,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Esegui richiesta",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          elevation: 4.0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (context) => Buffer()));
          },
          //child: Icon(Icons.send, color: Colors.white)
        )
      ]),
    );
  }
}

class Buffer extends StatefulWidget {
  Buffer({Key? key}) : super(key: key);

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
      backgroundColor: Color(0xFFF6F7FF),
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
                  child: CircularProgressIndicator(
                    strokeWidth: 6.0,
                  ));
            }
          }),
    );
  }
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
      margin: EdgeInsets.only(
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
            padding: EdgeInsets.all(12.0),
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
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        widget.via,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.data.toString(),
                        style: TextStyle(
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

class changeSetting extends StatefulWidget {
  changeSetting({Key? key}) : super(key: key);

  @override
  _changeSettingState createState() => _changeSettingState();
}

class _changeSettingState extends State<changeSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Cambia le impostazioni",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Inserisci il nuovo nickname',
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cambia la via',
              ),
            )),
        Container(
          padding: EdgeInsets.all(10),
          child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                "Conferma le modifiche",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              elevation: 4.0,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => BufferModifiche()));
              }),
        )
      ]),
    );
  }
}

class BufferModifiche extends StatefulWidget {
  BufferModifiche({Key? key}) : super(key: key);

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
      backgroundColor: Color(0xFFF6F7FF),
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
                  child: CircularProgressIndicator(
                    strokeWidth: 6.0,
                  ));
            }
          }),
    );
  }
}

class Conferma2 extends StatefulWidget {
  Conferma2({Key? key}) : super(key: key);

  @override
  _Conferma2State createState() => _Conferma2State();
}

class _Conferma2State extends State<Conferma2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Modifiche avvenute con successo!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Torna alla schermata principale",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => InterfacciaPrincipale()));
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
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.blue,
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
            Text(
              "Welcome in TruccoParrucco",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            state == false
                ? Text(
                    "Scegli il parrucchiere dove tagliare i capelli",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                : Text(
                    "Guarda i clienti che hanno prenotato il taglio di capelli",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
            SizedBox(
              height: 6.5,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Text(
                    "Modalità:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
                    child: Text(
                      "Cliente",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Switch(
                    value: state,
                    onChanged: (bool s) {
                      setState(() {
                        state = s;
                      });
                    },
                    /*activeColor: Colors.blue,
                    activeTrackColor: Colors.blue,*/
                    inactiveThumbColor: Colors.green,
                  ),
                  Text(
                    "Parrucchiere",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Parrucchiere(
                        nome: "img[0]",
                        via: "Cristina e Thomas parrucchieri",
                        rating: 5),
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    child: Parrucchiere(
                        nome: "img[1]", via: "Total Look N.&N", rating: 4),
                  ),
                  Container(
                      padding: EdgeInsets.all(25),
                      child: Parrucchiere(
                          nome: "img[2]", via: "Da Vincis", rating: 4)),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {
                if (state == true) {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => PagGestore()));
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => PrenotazioneCliente()));
                }
              },
            ),
            label: "Prenotazioni",
          ),
        ],
      ),
    );
  }
}

class confermaModifiche extends StatefulWidget {
  confermaModifiche({Key? key}) : super(key: key);

  @override
  _confermaModificheState createState() => _confermaModificheState();
}

class _confermaModificheState extends State<confermaModifiche> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Text(
              "Prenotazione confermata!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                child: Text(
                  "Torna alla schermata principale",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                elevation: 4.0,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => InterfacciaPrincipale()));
                }),
          ),
        ],
      ),
    );
  }
}
