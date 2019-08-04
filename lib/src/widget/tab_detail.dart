import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class TabDetail extends StatefulWidget {
  @override
  _TabDetailState createState() => _TabDetailState();
  final Character character;

  TabDetail({Key key, this.character}) : super(key: key);
}

class _TabDetailState extends State<TabDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Kotori Itsuka',
            style: TextStyle(
                fontSize: 32,
                color: widget.character.colors[0],
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 6))
            ],
              borderRadius: BorderRadius.circular(4)
            ),
            child: Card(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Age: ${widget.character.age}',style: TextStyle(fontSize: 18),),
                      Text('Gender: ${widget.character.gender}',style: TextStyle(fontSize: 18),)
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
            Text('Height: 145cm',style: TextStyle(fontSize: 18),),
            Text('Species: ${widget.character.species}',style: TextStyle(fontSize: 18),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
          child: Text('Appearances:',style: TextStyle(fontSize: 26,)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Light Novel:',style: TextStyle(fontSize: 18,color: widget.character.colors[0],fontWeight: FontWeight.w700)),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Volume 1-19',style: TextStyle(fontSize: 16,)),
                    SizedBox(height: 10,),
                    Text('Date A Live Encore 1-7',style: TextStyle(fontSize: 16,)),
                  ],
                ),
              ),
              Text('Anime:',style: TextStyle(fontSize: 18,color: widget.character.colors[0],fontWeight: FontWeight.w700)),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Date A Live: Episode 1-12',style: TextStyle(fontSize: 16,)),
                    SizedBox(height: 10,),
                    Text('Date A Live II: Episode 1-2, 4-10',style: TextStyle(fontSize: 16,)),
                  ],
                ),
              ),
              Text('Game:',style: TextStyle(fontSize: 18,color: widget.character.colors[0],fontWeight: FontWeight.w700)),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Date A Live: Rinne Utopia',style: TextStyle(fontSize: 16,)),
                    SizedBox(height: 10,),
                    Text('Date A Live: Ars Install',style: TextStyle(fontSize: 16,)),
                  ],
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
