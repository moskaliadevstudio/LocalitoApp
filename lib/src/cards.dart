import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CardsPage extends StatelessWidget {

  double distancia = 5.2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
           child: Container(
            height: 705,
            padding: EdgeInsets.only(top: 0),
            color: Colors.white,
            child: Column(
              children: [
                _seccionLocal('Destacados', FontAwesomeIcons.fire, 70),
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width:20),
                      _cardDest(context,'Pozolería "Mary"', 'assets/img/pozole.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Sorpresas AcaLove', 'assets/img/regalos.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Tazas Decoradas Rosy', 'assets/img/tazas.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Chi Palace', 'assets/img/asianfood.jpg'),
                      SizedBox(width:20),
                    ],
                  ),
                ),
                SizedBox(height:0),
                _seccionLocal('Favoritos', FontAwesomeIcons.solidHeart, 105),
                SizedBox(height: 10),
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width:20),
                      _cardDest(context, 'Towitas Bakery', 'assets/img/towitas.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Snack Attack', 'assets/img/snackattack.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Pretty Craft', 'assets/img/pretty.jpg'),
                      SizedBox(width:20),
                      _cardDest(context, 'Bazar D&M', 'assets/img/bazar.jpg'),
                      SizedBox(width:20),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text('Categorías', style: 
                  TextStyle(
                    fontFamily: 'Montserrat', 
                    fontWeight: FontWeight.bold,
                    color: Hexcolor('#FF7446'),
                    fontSize: 25,
                  )
                ),
                SizedBox(height: 5),
                Container(
                  width: double.infinity,
                  height: 280,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _categoriaLocal('Comida', 'assets/img/comidacat.png'),
                          SizedBox(width:7),
                          _categoriaLocal('Ropa', 'assets/img/ropacat.jpg'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _categoriaLocal('Salud y Belleza', 'assets/img/saludybcat.jpg'),
                          SizedBox(width:7),
                          _categoriaLocal('Accesorios', 'assets/img/accesorioscat.png'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _categoriaLocal('Otros', 'assets/img/bazar.jpg'),
                          SizedBox(width:7),
                          _categoriaLocal('Garage', 'assets/img/garagecat.jpg'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: Hexcolor('#FF7446'),
          backgroundColor: Hexcolor('#FF7446'),
          buttonBackgroundColor: Colors.amber[200],
          height: 45,
          index: 1,
          items: [
            Icon(Icons.account_circle, size:35, color: Colors.white),
            Icon(Icons.store, size: 35, color: Colors.white),
            Icon(Icons.shopping_basket, size: 35, color: Colors.white),
          ],
          animationDuration: Duration(
            milliseconds: 200
          ),
          animationCurve: Curves.bounceInOut,
          onTap: (index){
            debugPrint("the index is $index");
          }
        )
      ),
    );
  }

  Widget _seccionLocal(String texto, IconData iconsec, double spacewidth){
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
        child: Row(
          children: [
            Text(texto,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Hexcolor('#FF7446')
              ),
            ),
            SizedBox(width: spacewidth),
            Icon(iconsec , color: Hexcolor('#FF3030'), size: 33.0,)
          ],
        ),
    );
  }

  Widget _cardDest(BuildContext context,String title, String urlimage){
    return GestureDetector(
       onTap: (){
         debugPrint('Presionaste un local: $title');
         Navigator.pushNamed(context, 'localito');
       },
      child: Container(
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(urlimage),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 10),
              child: Text(title, style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 19,
                shadows: [
                  Shadow(
                    offset: Offset(3.0,2.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0)
                  )
                ]
              ),
              ),
            ),
            SizedBox(height:5),
            _descripcionLocal()
          ]
        )
      ),
    );
  }

  Widget _descripcionLocal(){
    return Row(
      children: [
        SizedBox(width:7),
        Icon(Icons.place, color: Colors.white, size:20),
        Text('$distancia km', style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize:16, fontWeight: FontWeight.bold)),
        SizedBox(width: 100),
        Icon(Icons.star, color: Colors.yellowAccent, size:20),
        Text('5', style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize:16, fontWeight: FontWeight.bold)),
      ]
    );
  }

  Widget _categoriaLocal(String categoryname, String catimg){
    return GestureDetector(
      onTap: (){
        debugPrint('presionado');
      },
      child: Stack(
        children: [ 
          Container(
            width: 140,
            height:80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(catimg),
                fit: BoxFit.cover
              ),
              boxShadow: [
              BoxShadow(
                color: Colors.black26.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(-1,1)
              )
              ]
            ),
          ),
          Container(
            
            height: 80,
            width:140,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 116, 70, 0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(categoryname, style: 
                TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize:20,
                  color: Colors.white
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}