import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class LocalitoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            _localAppbar('Pozolería "Mary"'),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    width: double.infinity,
                    height:450,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text('Nuestros productos', style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Hexcolor('#FF7446')
                        )),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _cardProducto('assets/img/pozoleplato.jpeg', 'Pozole blanco'),
                            _cardProducto('assets/img/pozoleverde.jpg', 'Pozole verde')
                          ],
                        ),
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _cardProducto('assets/img/botana.jpg', 'Orden de botana'),
                            _cardProducto('assets/img/aguahorchata.jpg', 'Agua de horchata')
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width:double.infinity,
                    height:200,
                    color: Colors.red
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }

  Widget _localAppbar(String localname){
    return SliverAppBar(
      //floating: true,
      backgroundColor: Hexcolor('#FF7446'),
      pinned:true,
      elevation:3.0,
      expandedHeight: 200,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
          padding: const EdgeInsets.only(left: -0.0, top: 11.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(localname, 
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(-1.0,1.2),
                    blurRadius: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0)
                  )
                ]
              )
            ),
          ),
        ),
        background: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _localStyle('assets/img/pozole.jpg', 5.2, 5)
          ],
        ),
      )
    );
  }

  Widget _localStyle(String urlimage, double distance, int rate){
    return Container(
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage(urlimage),
          fit: BoxFit.cover
        ),
      ),
      child: Column(
        children: [
          SizedBox(height:168),
          Row(
            children: [
              SizedBox(width:10),
              GestureDetector(
                onTap: (){debugPrint('Ubicación');},
                child: Icon(Icons.place, color: Colors.white, size:20)),
              SizedBox(width:3),
              Text('5.2 km', style: TextStyle(fontSize:22, fontFamily: 'Montserrat', color: Colors.white)),
              SizedBox(width:215),
              GestureDetector(
                onTap: (){ debugPrint('Calificar');},
                child: Icon(FontAwesomeIcons.solidStar, color: Hexcolor('#fdcc0d'),size:19)),
              SizedBox(width:6),
              Text('5', style: TextStyle(fontSize:22, fontFamily: 'Montserrat', color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardProducto(String prodimg, String productname){
    return GestureDetector(
      onTap: (){
        debugPrint('seleccionaste: $productname');
      },
      child: Container(
        height:170,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              Container(
                height:122,
                width:172,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(prodimg),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
              ),
              Text(productname, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, 
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
              )
            ]
          )
        ),
      ),
    );
  }

}