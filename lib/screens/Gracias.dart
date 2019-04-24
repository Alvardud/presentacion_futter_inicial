import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class Gracias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[800],
      child: Center(
        child: cuerpo(),
      ),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        commonText(texto: 'Thank you!',color: Colors.white,size: 60.0,),
        Container(height: 50.0,),
        commonText(texto: 'flutter.dev',color: Colors.blue[300],size: 24.0,)
      ],
    );
  }
}
