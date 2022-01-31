import 'package:flutter/material.dart';

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
