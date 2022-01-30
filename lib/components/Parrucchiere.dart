import 'package:flutter/material.dart';
//import 'package:hair2/components/Nextpage.dart';
import 'NextPage.dart';

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
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => nextPage(nameStylist: widget.nome)));
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
