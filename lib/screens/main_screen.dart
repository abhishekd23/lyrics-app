import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/cards/box_cards.dart';

final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool expansionTile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFDEEEE),
        leading: Icon(
          Icons.audiotrack_outlined,
          color: Colors.black,
          size: 40.0,
        ),
        title: TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen()));
          },
          child: Text(
            "LyricsWIZ",
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (expansionTile == false) {
                    expansionTile = true;
                  } else {
                    expansionTile = false;
                  }
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Center(
                    child: Text(
                      "Menu",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            expansionTile
                ? Expansion()
                : SizedBox(
                    height: 0.0,
                  ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Boxes(songName: "Brown Munde"),
                  Boxes(songName: "Brown Mundedfvgfvdfvfvfdvdfvfv"),
                  Boxes(songName: "Brown Munde"),
                  Boxes(songName: "Brown Munde"),
                  Boxes(songName: "Brown Munde"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Expansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black87,
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "HINDI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 2,
                color: Colors.black,
              ),
              Text(
                "BOLLYWOOD",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 2,
                color: Colors.black,
              ),
              Text(
                "PUNJABI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 2,
                color: Colors.black,
              ),
              Text(
                "HARYANI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(
                height: 10.0,
                thickness: 2,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
