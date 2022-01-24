import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
/*import 'package:truccoparrucco/components/travelcard.dart';
import 'package:truccoparrucco/components/NextPage.dart';
import 'package:truccoparrucco/components/MenuItem.dart';
import 'package:truccoparrucco/components/Parrucchiere.dart';
import 'package:truccoparrucco/components/PrenotazioneClienti.dart';*/

void main() {
  //Unit testing
  test('Unit test sulla creazione della TravelCard', () {
    final Card = TravelCard(
        img: "a.jpg", HotelName: "Da Vincis", location: "Bormio", rating: 4);

    expect(Card.img, "a.jpg");
    expect(Card.HotelName, "Da Vincis");
    expect(Card.location, "Bormio");
    expect(Card.rating, 4);
  });
  test('Unit test sulla creazione del MenutItem', () {
    final Menu =
        MenuItem(text: "ProvaTesto", category: "Semplice", icon: Icons.share);
    expect(Menu.text, "ProvaTesto");
    expect(Menu.category, "Semplice");
    expect(Menu.icon, Icons.share);
  });

  test("Unit test per NextPage.dart", () {
    final pag2 = nextPage();

    String a = pag2.onPressed2();

    expect(a, "Pressed");
  });
  test("Unit test per la classe Parrucchiere", () {
    final p = Parrucchiere(nome: "nome", via: "via", rating: 4);
    expect(p.nome, "nome");
    expect(p.via, "via");
    expect(p.rating, 4);
  });

  test("Unit test per la classe Prenotazioniclienti", () {
    final p = PrenotazioneSingolaCliente(
        nome: "nome", via: "via", data: DateTime(2020 - 1 - 2));
    expect(p.nome, "nome");
    expect(p.via, "via");
    expect(p.data, DateTime(2020 - 1 - 2));
  });
}

/**
 * TUTTE LE CLASSI CHE SONO DA TESTARE
 * N.B: è stata fatta questa procedura per renderere
 * possibile l'utilizzo di Travis CI, altrimenti 
 * non funzionava l'import di travis CI
 */
class TravelCard extends StatefulWidget {
  const TravelCard(
      {Key? key,
      required this.img,
      required this.HotelName,
      required this.location,
      required this.rating})
      : super(key: key);

  final String img;
  final String HotelName;
  final String location;
  final int rating;

  @override
  _TravelCardState createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
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
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover,
            scale: 2.0,
          )),
          width: 200.0,
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
                        widget.HotelName,
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
                        widget.location,
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

        DatePickerDialog(
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse("20250101"),
        ),

        Text(
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

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: Colors.black, size: 10),
          Text(item.text)
        ],
      ));
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
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => TravelApp()));
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

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> img = [
    //1
    "a.jpeg",
    //2
    "b.jpeg",
    //3
    "c.jpeg",
  ];

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
          )),
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
            Text(
              "Scegli il tuo negozio da cui fare il taglio",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            DefaultTabController(
                length: 3,
                child: Expanded(
                  child: Column(children: [
                    Container(
                      height: 300.0,
                      child: TabBarView(children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              TravelCard(
                                  img: img[0],
                                  HotelName: "Cristina e Thomas parrucchieri",
                                  location: "Bormio",
                                  rating: 5),
                              TravelCard(
                                  img: img[1],
                                  HotelName: "Total Look N.&N",
                                  location: "Bormio",
                                  rating: 4),
                              TravelCard(
                                  img: img[2],
                                  HotelName: "Da Vincis",
                                  location: "Bormio",
                                  rating: 4),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [],
                          ),
                        ),
                      ]),
                    )
                  ]),
                ))
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
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (context) => PrenotazioneCliente()));
              },
            ),
            label: "Prenotazioni",
          ),
        ],
      ),
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
