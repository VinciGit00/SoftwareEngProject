import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/Stylist2.dart';
import 'package:provider/provider.dart';

class StylistListWidget extends StatefulWidget {
  const StylistListWidget({Key? key}) : super(key: key);

  @override
  State<StylistListWidget> createState() => _StylistListWidgetState();
}

class _StylistListWidgetState extends State<StylistListWidget> {
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
              Consumer<HairStylists>(builder: (context, stylists, child) {
                return Expanded(
                    //child: Text('stylists: ${stylists.stylists.length}'),
                    child: ListView(
                  children: [
                    for (var stylist in stylists.stylists)
                      ListTile(
                        title: Text(stylist.id != null
                            ? stylist.id.toString()
                            : "null"),
                        subtitle: Text(stylist.email != null
                            ? stylist.email.toString()
                            : "null"),
                      ),
                  ],
                ));
              }),
              ElevatedButton(
                onPressed: () {},
                child: const Text("empty button"),
              ),
            ],
          ),
        ));
  }
}
