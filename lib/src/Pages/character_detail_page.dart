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
      resizeToAvoidBottomInset: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: widget.character.colors[0],
            expandedHeight: screenHeight * 0.4,
            title: Hero(
                tag: 'name-${widget.character.name}',
                child: Text(widget.character.name
                    .substring(0, widget.character.name.indexOf(' ')))),
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
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
                child: PreferredSize(
              child: Container(
                color: Colors.grey.shade50,
                child: TabBar(
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
                ),
              ),
              preferredSize: Size.fromHeight(screenHeight * 0.07),
            )),
          ),
          SliverFixedExtentList(
            itemExtent: screenHeight*1.25,
            delegate: SliverChildBuilderDelegate((builder,_){
              return TabBarView(
                controller: _tabController,
                children: <Widget>[
                  TabDetail(
                    character: widget.character,
                  ),
                  FormTab(
                    character: widget.character,
                  ),
                  DescriptionTab(
                    character: widget.character,
                  )
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize child;

  _SliverAppBarDelegate({this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return child;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => child.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
