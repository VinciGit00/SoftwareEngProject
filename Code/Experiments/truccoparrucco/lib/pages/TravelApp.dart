import 'package:flutter/material.dart';
import 'package:truccoparrucco/components/travelcard.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({Key key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    //1
    "https://upload.wikimedia.org/wikipedia/it/4/43/Bender.png",
    //2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
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
                              travelCard(
                                  urls[0],
                                  "Cristina e Thomas parrucchieri",
                                  "Bormio",
                                  5),
                              travelCard(urls[0], "Total Look N.&N. Bormio",
                                  "Bormio", 4),
                              travelCard(urls[0], "Total Look N.&N. Bormio",
                                  "Bormio", 4),
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
        selectedItemColor: Color(0xFFFE8C68),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Prenotazioni",
          ),
        ],
      ),
    );
  }
}
