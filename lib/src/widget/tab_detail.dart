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

class _TabDetailState extends State<TabDetail> with TickerProviderStateMixin {
  AnimationController controller;
  AnimationController wordController;
  Animation<double> headingAnimation;
  Animation<Offset> wordAnimation;
  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
        duration: Duration(seconds: 1), vsync: this);
    wordController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    headingAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.5,
          1.0,
          curve: Curves.easeIn,
        ),
      ),
    );
    wordAnimation = Tween<Offset>(
      begin: Offset(6.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: wordController,
        curve: Interval(
          0.5,
          0.7,
          curve: Curves.ease,
        ),
      ),
    );
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    wordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    controller.forward();
    wordController.forward();
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
      child: Padding(
        padding:  EdgeInsets.fromLTRB(screenWidth*0.01, screenHeight*0.01,screenWidth*0.01 , 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FadeTransition(
              opacity: headingAnimation,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  widget.character.name,
                  style: TextStyle(
                      fontSize: 32,
                      color: widget.character.colors[0],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FadeTransition(
              opacity: headingAnimation,
              child: Padding(
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
                            SizedBox(width: screenWidth*0.01,),
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
            ),
            FadeTransition(
              opacity: headingAnimation,
              child: Row(
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
            ),
            SlideTransition(
              position: wordAnimation,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.008, screenHeight * 0.008, 0, 0),
                child: Text('Appearances:',
                    style: TextStyle(
                      fontSize: 26,
                    )),
              ),
            ),
            SlideTransition(
              position: wordAnimation,
              child: Padding(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
