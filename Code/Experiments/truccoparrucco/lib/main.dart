import 'package:flutter/material.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/MenuItem.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginScreen(),
    home: nextPage(),
  ));
}

class TravelApp extends StatefulWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  List<String> img = [
    //1
    "a.jpg",
    //2
    "b.jpg",
    //3
    "c.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 4.0,
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
        selectedItemColor: Colors.blue.shade300,
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

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'VinciSuperUser@gmail.com': '0000',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 1000);
  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      //backgroundColor: Color((0xFFF6F7FF);
      title: 'Trucco Parrucco Bormio',
      onLogin: _authUser,
      onSignup: _signupUser,
      //style: TextStyle(color: Color(0xFFF6F7FF)

      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          //label: 'Google',
          callback: () async {
            debugPrint('start google sign in');
            await Future.delayed(loginTime);
            debugPrint('stop google sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.facebookF,
          //label: 'Facebook',
          callback: () async {
            debugPrint('start facebook sign in');
            await Future.delayed(loginTime);
            debugPrint('stop facebook sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.linkedinIn,
          callback: () async {
            debugPrint('start linkdin sign in');
            await Future.delayed(loginTime);
            debugPrint('stop linkdin sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.githubAlt,
          callback: () async {
            debugPrint('start github sign in');
            await Future.delayed(loginTime);
            debugPrint('stop github sign in');
            return null;
          },
        ),
      ],
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => TravelApp(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}

class nextPage extends StatefulWidget {
  const nextPage({Key? key}) : super(key: key);

  @override
  _nextPageState createState() => _nextPageState();
}

class _nextPageState extends State<nextPage> {
  void onPressed() {
    print("Pressed");
  }

  late String choice = "Scegli il tipo di taglio";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seleziona la data"),
      ),
      body: Column(children: [
        DatePickerDialog(
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse("20250101"),
        ),
        Text(
          "Inserisci il giorno ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextField(
            //controller: username,
            decoration: InputDecoration(
          labelText: "Data", //babel text
          hintText: "Inserisci il giorno", //hint text
          prefixIcon: Icon(Icons.calendar_view_month), //prefix iocn
          hintStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold), //hint text style
          labelStyle: TextStyle(
              fontSize: 13, color: Colors.blue.shade300), //label style
        )),
        Text(
          "Inserisci il tipo di taglio",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
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
          margin: EdgeInsets.all(10),
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
            "My raised button",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue.shade300,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          elevation: 4.0,
          onPressed: onPressed,
          //child: Icon(Icons.send, color: Colors.white)
        )
      ]),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(item.icon, color: Colors.black, size: 20),
          Text(item.text)
        ],
      ));
}

class TipoTaglio {
  static const List<MenuItem> itemFirst = [semplice, composto];

  static const semplice = MenuItem(text: "Semplice", icon: Icons.share);

  static const composto = MenuItem(text: "Composto", icon: Icons.share);
}
