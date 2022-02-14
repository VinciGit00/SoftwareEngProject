import 'package:flutter/material.dart';
import 'package:hair2/controller/stylist2.dart';
import 'package:provider/provider.dart';

class StylistListWidget extends StatelessWidget with ChangeNotifier {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('example'),
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
