import 'package:presentacion_flutter/widgets/common.dart';
import 'package:flutter/material.dart';

class SlideUnaImagen extends StatelessWidget {

  final String titulo;
  final double imageWidth;
  final double imageHeigth;
  final String direccion;

  SlideUnaImagen({
    this.direccion,
    this.titulo,
    this.imageHeigth,
    this.imageWidth
  });

  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: titulo,
      cuerpo: cuerpo(
        imageWidth: imageWidth,
        imageHeigth: imageHeigth,
        direccion: direccion,
      ),
    );
  }
}

class cuerpo extends StatelessWidget {

  final double imageWidth;
  final double imageHeigth;
  final String direccion;

  cuerpo({
    this.imageWidth,
    this.imageHeigth,
    this.direccion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height-105,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Center(
          child: Container(
            height: imageHeigth,
            width: imageWidth,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(direccion),
                ),
              ),
            ),
          ),
        )
    );
  }
}
