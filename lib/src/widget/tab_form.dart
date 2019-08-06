import 'package:character_app/src/model/character.dart';
import 'package:flutter/material.dart';

class FormTab extends StatefulWidget {
  @override
  _FormTabState createState() => _FormTabState();
  final Character character;

  FormTab({
    Key key,
    this.character,
  }) : super(key: key);
}

class _FormTabState extends State<FormTab> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    Widget characterForm(String nameForm, int index) {
      return Container(
        height: screenHeight * 0.5,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 6)),
        ], borderRadius: BorderRadius.circular(6), shape: BoxShape.rectangle),
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                widget.character.imagePath[index],
                height: screenHeight * 0.25,
              ),
              Text(
                nameForm,
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      itemCount: widget.character.imagePath.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (_, index) {
        String nameForm = '';
        switch (index) {
          case 0:
            {
              nameForm = 'Normal Form';
              break;
            }
          case 1:
            {
              nameForm = 'Spirit Form';
              break;
            }
          case 2:
            {
              nameForm = 'Inverse Form';
              break;
            }
          case 3:
            {
              nameForm = 'Full Form';
              break;
            }
        }
        return characterForm(nameForm, index);
      },
    );
  }
}
