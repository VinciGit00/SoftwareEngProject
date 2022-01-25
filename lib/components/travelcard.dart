import 'package:hair2/components/Nextpage.dart';

import 'package:flutter/material.dart';

class TravelCard extends StatefulWidget {
  const TravelCard(
      {Key? key,
      required this.img,
      required this.HotelName,
      required this.location,
      required this.rating})
      : super(key: key);

  final String img;
  final String HotelName;
  final String location;
  final int rating;

  @override
  _TravelCardState createState() => _TravelCardState();
}

class _TravelCardState extends State<TravelCard> {
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
          Navigator.push(context,
              MaterialPageRoute<void>(builder: (context) => nextPage()));
        },
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(widget.img),
            fit: BoxFit.cover,
            scale: 2.0,
          )),
          width: 200.0,
          height: 200,
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
                        widget.HotelName,
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
                        widget.location,
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
