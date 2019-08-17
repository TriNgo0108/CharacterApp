import 'package:character_app/src/model/character.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
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

class _FormTabState extends State<FormTab> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  AnimationController dialogController;
  Animation<double> dialogAnimation;

  @override
  void initState() {
    // TODO: implement initState
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    dialogController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    dialogAnimation =
        CurvedAnimation(parent: dialogController, curve: Curves.easeIn);
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    dialogController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    void _showImage(String nameForm, String imagePath) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return ScaleTransition(
              scale: dialogAnimation,
              child: SimpleDialog(
                backgroundColor: Colors.grey.shade200,
                shape: RoundedRectangleBorder(
                    side: BorderSide(style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(10)),
                titlePadding: EdgeInsets.all(0),
                title: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            screenWidth * 0.05, screenHeight * 0.05, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              nameForm,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: widget.character.colors[0]),
                            ),
                            SizedBox(
                              height: 0,
                              width: screenWidth * 0.35,
                            ),
                            IconButton(
                              icon: Icon(Icons.close),
                              color: widget.character.colors[0],
                              onPressed: () {
                                Navigator.pop(context);
                                dialogController.reverse();
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                children: <Widget>[
                  Image.asset(imagePath,height: screenHeight*0.3,width: screenWidth*0.3,),
                ],
              ),
            );
          });
    }

    Widget characterForm(String nameForm, int index) {
      return CircularRevealAnimation(
        animation: animation,
        child: Container(
          padding: EdgeInsets.only(top: screenHeight*0.005),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.grey.shade100, offset: Offset(0, 6)),
          ], borderRadius: BorderRadius.circular(6), shape: BoxShape.rectangle),
          child: GestureDetector(
            onTap: () {
              dialogController.forward();
              _showImage(nameForm, widget.character.imagePath[index]);
            },
            child: Card(
              margin: EdgeInsets.only(left: screenWidth*0.01),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    widget.character.imagePath[index],
                    height: screenHeight * 0.2,
                    width: screenWidth*0.2,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Text(
                    nameForm,
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
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
              if (widget.character.species == 'Human')
                nameForm = 'CR Unit';
              else
                nameForm = 'Spirit Form';
              break;
            }
          case 2:
            {
              if (widget.character.name == 'Natsumi')
                nameForm = 'Adult Form';
              else
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
