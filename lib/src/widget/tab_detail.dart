import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class TabDetail extends StatefulWidget {
  @override
  _TabDetailState createState() => _TabDetailState();
  final Character character;

  TabDetail({
    Key key,
    this.character,
  }) : super(key: key);
}

class _TabDetailState extends State<TabDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    List<Widget> lightNovelList;
    List<Widget> animeList;
    List<Widget> gameList;
    lightNovelList = widget.character.lightNovel
        .map((name) => Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.013,left: screenWidth*0.025),
              child: Text(
                name ?? ' ',
                style: TextStyle(fontSize: 16),
              ),
            ))
        .toList();
    animeList = widget.character.anime
        .map((name) => Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.013,left: screenWidth*0.025),
              child: Text(
                name ?? ' ',
                style: TextStyle(fontSize: 16),
              ),
            ))
        .toList();
    gameList = widget.character.game
        .map((name) => Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.013,left: screenWidth*0.025),
              child: Text(
                name ?? ' ',
                style: TextStyle(fontSize: 16),
              ),
            ))
        .toList();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              widget.character.name,
              style: TextStyle(
                  fontSize: 32,
                  color: widget.character.colors[0],
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 6))
              ], borderRadius: BorderRadius.circular(4)),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Age: ${widget.character.age}',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Gender: ${widget.character.gender}',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Height: ${widget.character.height}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'Species: ${widget.character.species}',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.008, screenHeight * 0.008, 0, 0),
            child: Text('Appearances:',
                style: TextStyle(
                  fontSize: 26,
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                screenWidth * 0.02, screenHeight * 0.008, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Light Novel:',
                    style: TextStyle(
                        fontSize: 18,
                        color: widget.character.colors[0],
                        fontWeight: FontWeight.w700)),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.01, screenHeight * 0.015, 0, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: lightNovelList),
                ),
                Text('Anime:',
                    style: TextStyle(
                        fontSize: 18,
                        color: widget.character.colors[0],
                        fontWeight: FontWeight.w700)),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      screenWidth * 0.01, screenHeight * 0.015, 0, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: animeList),
                ),
                Text('Game:',
                    style: TextStyle(
                        fontSize: 18,
                        color: widget.character.colors[0],
                        fontWeight: FontWeight.w700)),
                Padding(
                  padding:  EdgeInsets.fromLTRB(screenWidth*0.01, screenHeight*0.015, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: gameList,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
