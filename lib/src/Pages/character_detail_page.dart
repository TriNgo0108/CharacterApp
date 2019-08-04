import 'package:character_app/src/model/character.dart';
import 'package:character_app/src/widget/tab_description.dart';
import 'package:character_app/src/widget/tab_detail.dart';
import 'package:character_app/src/widget/tab_form.dart';
import 'package:flutter/material.dart';

class CharacterDetailPage extends StatefulWidget {
  final Character character;

  @override
  _CharacterDetailPageState createState() => _CharacterDetailPageState();

  CharacterDetailPage({Key key, this.character});
}

class _CharacterDetailPageState extends State<CharacterDetailPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: widget.character.colors[0],
            expandedHeight: screenHeight * 0.4,
            title: Hero(
                tag: 'name-${widget.character.name}',
                child: Text(widget.character.name)),
            flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                    tag: 'image-${widget.character.name}',
                    child: Image.asset(widget.character.imagePath))),
            pinned: true,
            floating: true,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            actions: <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((_, __) {
              return TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Detail',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Form',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Description',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
                indicatorColor: widget.character.colors[0],
                unselectedLabelColor: Colors.grey.shade400,
              );
            }, childCount: 1, addSemanticIndexes: true),
          ),
          SliverFixedExtentList(
            itemExtent: 650,
            delegate: SliverChildBuilderDelegate((_,__){
              return TabBarView(
                controller: _tabController,
                children: <Widget>[
                 TabDetail(character: widget.character,),
                  FormTab(character: widget.character,),
                DescriptionTab(character: widget.character,)
                ],
              );
            },
              childCount: 1
            ),

          )
        ],
      ),
    ));
  }
}
