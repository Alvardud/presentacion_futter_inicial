import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class TodosEntornos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Todos los Entornos',
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
          Expanded(child: arriba()),
          Expanded(child: abajo())
        ],
      ),
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
              Expanded(child: cardImagen(direccion: 'assets/windows.png',nombre: 'Windows',width: 75.0,heigth:75.0)),
              Expanded(child: cardImagen(direccion: 'assets/ubuntu-logo32.png',nombre: 'Linux',width: 75.0,heigth:75.0),),
              Expanded(child: cardImagen(direccion: 'assets/macos-logo.png',nombre: 'MacOs',width: 75.0,heigth:50.0),)
            ],
          ),
    );
  }
}

class arriba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child: cardImagen(direccion: 'assets/androidlogo.png',nombre: 'Android',width: 75.0,heigth:75.0)),
                    Expanded(child: cardImagen(direccion: 'assets/applelogo.jpg',nombre: 'IOS',width: 75.0,heigth:75.0),),
                    Expanded(child: cardImagen(direccion: 'assets/hummingbird.png',nombre: 'Web',width: 200.0,heigth:75.0))
                  ],
                ),
    );
  }
}



