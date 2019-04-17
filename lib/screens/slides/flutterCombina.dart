import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class flutterCombina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Flutter combina lo mejor de ambos mundos',
      cuerpo: cuerpo(),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical:40.0, horizontal: 32.0),
      child: Contenedortexto(),
    );
  }
}

class Contenedortexto extends StatelessWidget {

  commonText primero = commonText(texto:"Flutter combina",color: Colors.black54,size: 25.0);
  commonText segundo = commonText(texto:'performance nativo y de calidad',color: Colors.blue[800],size: 25.0);
  commonText tercero = commonText(texto:'con ',color: Colors.black54,size: 25.0);
  commonText cuarto = commonText(texto:'desarrollo de alta velocidad',color: Colors.blue[800],size: 25.0);
  commonText quinto = commonText(texto:'y ',color: Colors.black54,size: 25.0);
  commonText sexto = commonText(texto:'multiplataforma',color: Colors.blue[800],size: 25.0);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
       commonText(texto: '\"', color: Colors.cyan, size: 50.0),
       Padding(padding:EdgeInsets.symmetric(horizontal: 2.0)),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           primero,   //texto
           segundo,   //texto
           Row(children: <Widget>[
             tercero,   //texto
             cuarto   //texto
           ]),
           Row(children: <Widget>[
             quinto,    //texto
             Padding(padding:EdgeInsets.symmetric(horizontal: 2.0)),
             sexto,   //text0o
             commonText(texto:'\"', color: Colors.cyan, size: 30.0)
           ])
         ],
       )
     ],
    );
  }
}

