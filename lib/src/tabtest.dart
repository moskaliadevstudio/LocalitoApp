import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TabsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90.0),
            child: AppBar(
             backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    TabBar(
                        unselectedLabelColor: Hexcolor('#FF7446'),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Hexcolor('#FF7446')
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Hexcolor('#FF7446'), width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                //child: Icon(Icons.account_circle),
                                child: Text("Perfil",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Hexcolor('#FF7446'), width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                //child: Icon(Icons.store),
                                child: Text("Locales",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Hexcolor('#FF7446'), width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Canasta",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                  ),
                                )
                              ),
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
          ]),
        ),
      )
      );
    
  }
}