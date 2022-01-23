import 'package:flutter/material.dart';
import 'package:hair2/Model/Entity/stylist2.dart';
import 'package:hair2/components/travelcard.dart';
import 'package:hair2/components/PrenotazioniCliente.dart';
import 'package:provider/provider.dart';

import '../authentication_service.dart';
import '../storage_service.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> img = [
    //1
    "a.jpg",
    //'https://i.insider.com/5abba0887708e93291718c93?width=2000',
    //2
    "b.jpg",
    //'https://i.insider.com/5abba0887708e93291718c93?width=2000',
    //3
    "c.jpg",
    // 'https://i.insider.com/5abba0887708e93291718c93?width=2000',
  ];

  @override
  Widget build(BuildContext context) {
    var _email = context.read<AuthenticationService>().userEmail();
    var t = FireStorageService.getImageUrl(context, 'pepasaur.jpg') != null
        ? FireStorageService.getImageUrl(context, 'pepasaur.jpg').toString()
        : "";
    t = 'https://firebasestorage.googleapis.com/v0/b/mypro-cc322.appspot.com/o/pepasaur.jpg?alt=media&token=e3304ccc-3451-4bda-988a-1099a904cbf6';
    print(t);
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
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: const Text("Sign out"),
            ),
            //Let's start by adding the text
            Text(
              "Welcome " + _email!,
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
                          child: Consumer<HairStylists>(
                              builder: (context, stylists, child) {
                            return ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (var stylist in stylists.stylists)
                                  TravelCard(
                                      img: t,
                                      HotelName: stylist.id != null
                                          ? stylist.id.toString()
                                          : "null",
                                      location: "Bormio",
                                      rating: 4),
                              ],
                            );
                          }),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              TravelCard(
                                  img: t,
                                  HotelName: "Cristina e Thomas parrucchieri",
                                  location: "Bormio",
                                  rating: 5),
                              TravelCard(
                                  img: t,
                                  HotelName: "Total Look N.&N",
                                  location: "Bormio",
                                  rating: 4),
                              TravelCard(
                                  img: t,
                                  HotelName: "Da Vincis",
                                  location: "Bormio",
                                  rating: 4),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              TravelCard(
                                  img: t,
                                  HotelName: "Da Vincis",
                                  location: "Bormio",
                                  rating: 4),
                            ],
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
