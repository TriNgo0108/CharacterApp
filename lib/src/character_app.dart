import 'package:flutter/material.dart';

import 'Pages/home_page.dart';
class CharacterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Date A Live',
        home: HomePage(),
    );
  }
}
