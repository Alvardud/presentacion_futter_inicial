import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class QueEsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulo(title: 'Que es Flutter?',),
          picker(),
          cuerpo(),
          footer()
        ],
      ),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical:8.0,horizontal: 16.0),
      child: Contenedortexto(),
    );
  }
}

class Contenedortexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('Flutter es el Sdk para movil de Google',style: TextStyle(
          color: Colors.blue[800],
          fontSize: 25.0
        ),),
        Padding(padding: EdgeInsets.symmetric(vertical:8.0),),
        Text('Ayudar a los desarrolladores a crear '+
            '\nexperiencias nativas de alta calidad en '+
                '\nplataformas móviles en un tiempo récord.',style: TextStyle(
          color: Colors.black54,
          fontSize: 16.0
        ),),
      ],
    );
  }
}
