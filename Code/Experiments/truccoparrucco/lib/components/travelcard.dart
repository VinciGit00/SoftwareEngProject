//Customized widget card

import 'dart:html';
import 'package:truccoparrucco/main.dart';

import 'package:flutter/material.dart';

class TravelCard extends StatefulWidget {
  const TravelCard({Key? key}) : super(key: key);

  @override
  _TravelCardState createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelApp> {
  @ovveride
  Widget build(String img, String HotelName, String location, int rating) {
    return Card(
      margin: EdgeInsets.only(
        right: 22.0,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      elevation: 0.0,
      shadowColor: Colors.blueGrey,
      child: InkWell(
        onTap: () {
          // Navigator.push(
          // context, MaterialPageRoute<void>(builder: (context) => nextPage())
          // );
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("$img"),
            fit: BoxFit.cover,
            scale: 2.0,
          )),
          width: 200.0,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (var i = 0; i < rating; i++)
                      Icon(
                        Icons.star,
                        color: Colors.blue.shade300,
                      ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        HotelName,
                        style: TextStyle(
                          color: Colors.blue.shade300,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.blue.shade300,
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
      //onPressed:() {
      //Navigator.push(
      //  context, MaterialPageRoute<void>(builder: (context) => nextPage())
      // );
      //};
    );
  }
}
