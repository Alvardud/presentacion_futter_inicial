import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class ComponentesFamiliaGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Componentes clave que ofrece google',
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
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Texto(),
          Expanded(child: abajo())
        ],
      ),
    );
  }
}

class Texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Center(
        child: commonText(texto: 'Flutter ofrece un kit de herramientas de UI portátil \n'
            'y de alta calidad, y una forma rápida y expresiva \n'
            'de crear UI de aplicaciones nativas',
          color: Colors.black54,
          size: 16.0,
        ),
      )
    );
  }
}


class abajo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: cardImagen(direccion: 'assets/firebase.png',nombre: 'Firebase',width: 75.0,heigth:100.0)),
          Expanded(child: cardImagen(direccion: 'assets/materialdesign-min.png',nombre: 'Material Design',width: 100.0,heigth:100.0)),
          Expanded(child: cardImagen(direccion: 'assets/cloud.png',nombre: 'Cloud Platform',width: 150.0,heigth:100.0),),
          Expanded(child: cardImagen(direccion: 'assets/mlkit.png',nombre: 'ML Kit',width: 150.0,heigth:100.0))
        ],
      ),
    );
  }
}