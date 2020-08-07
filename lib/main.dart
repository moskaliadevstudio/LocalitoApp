import 'package:flutter/material.dart';
import 'package:loginTest/src/cards.dart';
import 'package:loginTest/src/tabtest.dart'; 
import 'package:loginTest/src/localito.dart'; 

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      initialRoute: 'cards',
      routes: {
        'cards' : (BuildContext context) => CardsPage(),
        'tabs' : (BuildContext context) => TabsPage(),
        'localito' : (BuildContext) => LocalitoPage()
      },
    );
  }
}