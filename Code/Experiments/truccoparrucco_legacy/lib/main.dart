import 'package:flutter/material.dart';
import 'package:truccoparrucco/components/travelcard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> urls = [
    //1
    "https://www.ecosia.org/images?q=bender#id=B3C8B54B5B6CA77E4F48A501EA7AB15A2A4ECF66"
        //2
        "https://www.ecosia.org/images?q=bender#id=C8BBDF2419E3069154BB193B4042A1FE7CA68A19"
        //3
        "https://www.ecosia.org/images?q=bender#id=B3C8B54B5B6CA77E4F48A501EA7AB15A2A4ECF66"
        //4
        "https://www.ecosia.org/images?q=bender#id=0CB8F537F87B33339FDF1B79395A41769568ECCB"
        //5
        "https://www.ecosia.org/images?q=bender#id=3A632000A4328BBF3128DF1CF7EF0509F1CA2731"
        //6
        "https://www.ecosia.org/images?q=bender#id=A5D2C94DF53FBFD3E51F24FC9FCFD1710E281226"
        //7
        "https://www.ecosia.org/images?q=bender#id=F171EA13952F9F7B5434F15D214F031F5644806F"
        //8
        "https://www.ecosia.org/images?q=bender#id=515F36C7283468568CFF031BBEE309890E701C37"
        //9
        "https://www.ecosia.org/images?q=kiwi%20animal#id=96CECCEEA43B82AEF55F18BFD4635D6D0EC5F1D8"
        //10
        "https://www.ecosia.org/images?q=pinplup#id=3D1BFC9B96216AD112D25F827E11EB6E4B6E7486"
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

            Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x5543434343),
                child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Search for Hotel, flight... ",
                      prefixIcon: Icon(Icons.search, color: Colors.black54),
                      border: InputBorder.none,
                    ))),

            DefaultTabController(
                length: 3,
                child: Expanded(
                  child: Column(children: [
                    SizedBox(height: 30.0),
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotions",
                        ),
                        Tab(
                          text: "Favorites",
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard(urls[0], "Sfaccim", "Bormio", 5),
                              travelCard(urls[1], "Sfaccim", "Bormio", 5),
                              travelCard(urls[2], "Sfaccim", "Bormio", 5)
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
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text("BookMark"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text("Destination"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Notification"),
          ),
        ],
      ),
    );
  }
}
