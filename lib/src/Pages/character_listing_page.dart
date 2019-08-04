import 'package:character_app/src/model/character.dart';
import 'package:character_app/src/widget/charater_widget.dart';
import 'package:flutter/material.dart';

class CharacterListingPage extends StatefulWidget {
  @override
  _CharacterListingPageState createState() => _CharacterListingPageState();
}

class _CharacterListingPageState extends State<CharacterListingPage> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        viewportFraction: 1.0,
        initialPage: currentPage,
        keepPage: false
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: RichText(text:TextSpan(
            children: [
              TextSpan(text: "Date A Live", style: TextStyle(fontSize: 32, color: Colors.red.shade400,fontWeight: FontWeight.bold)),
              TextSpan(text: "\n"),
              TextSpan(text: "Characters", style:TextStyle(fontSize: 25,color: Colors.red.shade400) ),
            ]

          ) ),
        ),
        Expanded(
          child: PageView(
            physics: ClampingScrollPhysics(),
            controller: _pageController,
            children: <Widget>[
              for (var i = 0; i<characters.length;i++)
                CharacterWidget(character: characters[i], pageController: _pageController, currentPage: i)
            ],
          ),
        ),
      ],
    );
  }
}
