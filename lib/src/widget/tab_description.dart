import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class DescriptionTab extends StatefulWidget {
  @override
  _DescriptionTabState createState() => _DescriptionTabState();
  final Character character;

  DescriptionTab({Key key, this.character}) : super(key: key);
}

class _DescriptionTabState extends State<DescriptionTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: '" Now, let our date (battle) begin. "	',
              style: TextStyle(fontSize: 18, color: widget.character.colors[0]),
              children: [
                TextSpan(
                    text: '\n —Kotori Itsuka',
                    style: TextStyle(
                        fontSize: 18, color: widget.character.colors[0]))
              ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Text(
            'Kotori Itsuka is one of the main female characters of the Date A Live series. She is Shido\'s foster sister and secretly works as the commander of the <Fraxinus> airship.',
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
    );
  }
}
