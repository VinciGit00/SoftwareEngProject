import 'package:flutter/material.dart';
import 'Buffer.dart';
import 'package:hair2/components/MenuItem.dart';

class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

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

  String getText() {
    if (date == null) {
      return 'Select date';
    } else {
      return '${date.month}/${date.day}/${date.year}';
    }
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
            "Seleziona il giorno",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        //prefixIcon: Icon(Icons.calendar_month),
        RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Text(
            "Scegli la data",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          elevation: 4.0,
          onPressed: () => pickDate(context),
          //child: Icon(Icons.send, color: Colors.white)
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
