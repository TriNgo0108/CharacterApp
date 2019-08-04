import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class FormTab extends StatefulWidget {
  @override
  _FormTabState createState() => _FormTabState();
  final Character character;
  FormTab({Key key, this.character}):super(key:key);
}

class _FormTabState extends State<FormTab> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: screenHeight*0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade100, offset: Offset(0, 6)
                  ),
                ],
                borderRadius: BorderRadius.circular(6),
                shape: BoxShape.rectangle
              ),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset(widget.character.imagePath,height:screenHeight*0.35 ,),
                    Text('Normal Form',style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:  10),
            child: Container(
              height: screenHeight*0.4,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade100, offset: Offset(0, 6)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(6),
                shape: BoxShape.rectangle
              ),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('images/kotori_spiritForm.png',height:screenHeight*0.35 ,),
                    Text('Spirit Form',style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
            ),
          )
        ],
      );
  }
}
