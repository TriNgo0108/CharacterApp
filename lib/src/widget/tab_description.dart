import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class DescriptionTab extends StatefulWidget {
  @override
  _DescriptionTabState createState() => _DescriptionTabState();
  final Character character;
  DescriptionTab({Key key, this.character,}) : super(key: key);
}

class _DescriptionTabState extends State<DescriptionTab> with TickerProviderStateMixin {
  AnimationController controller;
  AnimationController wordController;
  Animation<Offset> headingAnimation;
  Animation<Offset> wordAnimation;
  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
        duration: Duration(milliseconds: 1250), vsync: this);
    wordController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    headingAnimation = Tween<Offset>(
      begin: Offset(-6.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.3,
          1,
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
          0.7,
          1,
          curve: Curves.easeIn,
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    controller.forward();
    wordController.forward();
    return SingleChildScrollView(
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight*0.05 ,),
              SlideTransition(
                position:headingAnimation ,
                child: Padding(
                  padding: EdgeInsets.only(left: screenWidth*0.3),
                  child: RichText(
                    textAlign: TextAlign.end,
                    text: TextSpan(
                        text: widget.character.quote,
                        style: TextStyle(fontSize: 18, color: widget.character.colors[0]),
                        children: [
                          TextSpan(
                              text: '\n — ${widget.character.name}',
                              style: TextStyle(
                                  fontSize: 18, color: widget.character.colors[0]))
                        ]),
                  ),
                ),
              ),
              SlideTransition(
                position: headingAnimation,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text(
                    widget.character.description,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              SlideTransition(
                position: wordAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Summary',
                    style: TextStyle(fontSize: 18, color: widget.character.colors[0]),textAlign: TextAlign.start,
                  ),
                ),
              ),
              SlideTransition(
                position: wordAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.character.summary,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              )
        ],
      ),
    );
  }
}
