import 'package:flutter/material.dart';
import 'Buffer.dart';
import 'package:hair2/components/MenuItem.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();

  String onPressed2() {
    return "Pressed";
  }
}

class _NextPageState extends State<NextPage> {
  void onPressed() {
    print("Pressed");
  }

  late String choice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        //backgroundColor: Color(0xFFF6F7FF),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            //color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Seleziona la data e il tipo di taglio",
          style: TextStyle(
            //color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: const Text(
            "Seleziona il giorno ",
            style: TextStyle(
              // color: Colors.black,
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

        const Text(
          "Inserisci il tipo di taglio",
          style: TextStyle(
            // color: Colors.black,
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: const Text(
            "Esegui richiesta",
            // style: TextStyle(color: Colors.white),
          ),
          //color: Colors.blue,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          elevation: 4.0,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (context) => const Buffer()));
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
