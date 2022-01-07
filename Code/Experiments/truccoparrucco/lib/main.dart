import 'package:flutter/material.dart';
import 'package:truccoparrucco/components/travelcard.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
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
                              travelCard(urls[0], "BOH", "Bormio", 5),
                              travelCard(
                                  "https://www.deabyday.tv/.imaging/default/article/guides/cuccioli/altri-animali/Tutto-sul-kiwi--l-animale-simbolo-della-Nuova-Zelanda/imageOriginal.jpg",
                                  "Sfaccim",
                                  "Bormio",
                                  5),
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
            label: "BookMark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Destination",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
        ],
      ),
    );
  }
}

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
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
      title: 'Trucco Parrucco Bormio',
      onLogin: _authUser,
      onSignup: _signupUser,
      loginProviders: <LoginProvider>[
        LoginProvider(
          icon: FontAwesomeIcons.google,
          label: 'Google',
          callback: () async {
            debugPrint('start google sign in');
            await Future.delayed(loginTime);
            debugPrint('stop google sign in');
            return null;
          },
        ),
        LoginProvider(
          icon: FontAwesomeIcons.facebookF,
          label: 'Facebook',
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
