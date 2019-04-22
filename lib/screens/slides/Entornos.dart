import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class Entornos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Entornos de Desarrollo',
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
      child: Center(
          child: abajo()
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
          Expanded(child: cardImagen(direccion: 'assets/androidstudio.jpg',nombre: 'Android Studio',width: 100.0,heigth:100)),
          Expanded(child: cardImagen(direccion: 'assets/vscode.png',nombre: 'Visual Studio Code',width: 100.0,heigth:100),),
          Expanded(child: cardImagen(direccion: 'assets/xcode.jpg',nombre: 'Xcode',width: 100.0,heigth:100.0),)
        ],
      ),
    );
  }
}




