import 'package:character_app/src/Pages/character_detail_page.dart';
import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatefulWidget {
  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget(
      {Key key, this.character, this.pageController, this.currentPage})
      : super(key: key);

  @override
  _CharacterWidgetState createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
           Navigator.push(context, PageRouteBuilder(pageBuilder: (context,_,__)=>CharacterDetailPage(character: widget.character) ));
        },
        child: AnimatedBuilder(
          animation: widget.pageController,
          builder: (context,child){
            double value = 1;
            if (widget.pageController.position.haveDimensions) {
              value = widget.pageController.page - widget.currentPage;
              value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
            }
            return Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Hero(
                      tag: "background-${widget.character.name}",
                      child: Container(
                        height: 0.6 * screenHeight,
                        width: 0.9 * screenWidth,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: widget.character.colors,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(30)
                        ),
                      )),
                ),
                Align(
                  alignment: Alignment(0, -0.5),
                  child: Hero(
                    tag: "image-${widget.character.name}",
                    child: Image.asset(
                      widget.character.imagePath[0],
                      height: screenHeight * 0.55*value,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48, right: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Hero(
                          tag: "name-${widget.character.name}",
                          child: Material(
                            color: Colors.transparent,
                            child: Container(
                              child: Text(
                                widget.character.name.substring(0,widget.character.name.indexOf(' ')),
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color:
                                    widget.character.colors[0].withGreen(150)),
                              ),
                            ),
                          )),
                      Text(
                        "Tap to Read more",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                )
              ],
            );
    },
        ));
  }
}
