import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class QueEsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: "Que es Flutter?",
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
      padding: EdgeInsets.symmetric(vertical:8.0,horizontal: 32.0),
      child: Row(
        children: <Widget>[
          Contenedortexto(),
          Container(
            width: 250.0,
            height: 400.0,
            child: Center(
            child: Image.asset('assets/Flutter-3.jpg',fit: BoxFit.contain,),),)
        ],
      ),
    );
  }
}

class Contenedortexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        commonText(texto:'Flutter es el Sdk para movil \nde Google',color: Colors.blue[800],size:25.0),
        Padding(padding: EdgeInsets.symmetric(vertical:8.0),),
        commonText(
          texto: 'Ayuda a los desarrolladores a crear '+
            '\nexperiencias nativas de alta calidad en '+
            '\nplataformas móviles en un tiempo récord.',
          color: Colors.black54,
          size:16.0,),
      ],
    );
  }
}
