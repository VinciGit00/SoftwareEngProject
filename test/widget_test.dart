import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
/*import 'package:truccoparrucco/components/Chosen.dart';
import 'package:truccoparrucco/components/Wrong.dart';
import 'package:truccoparrucco/components/Temp.dart';
import 'package:truccoparrucco/components/Profilo.dart';
import 'package:truccoparrucco/components/PrenotazioniCliente.dart';
import 'package:truccoparrucco/components/Gestore.dart';*/

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
}

/**
 * TUTTE LE CLASSI
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
