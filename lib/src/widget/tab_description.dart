import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class DescriptionTab extends StatefulWidget {
  @override
  _DescriptionTabState createState() => _DescriptionTabState();
  final Character character;
  DescriptionTab({Key key, this.character,}) : super(key: key);
}

class _DescriptionTabState extends State<DescriptionTab> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight*0.05 ,),
              Padding(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Text(
                  widget.character.description,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Summary',
                  style: TextStyle(fontSize: 18, color: widget.character.colors[0]),textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.character.summary,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              )
        ],
      ),
    );
  }
}
