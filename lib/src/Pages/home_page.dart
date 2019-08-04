
import 'package:character_app/src/Pages/character_listing_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.settings), onPressed: null),
              IconButton(icon: Icon(Icons.more_vert), onPressed: null)
            ],
          ),
        ),
        body: CharacterListingPage(),
      ),
    );
  }
}
