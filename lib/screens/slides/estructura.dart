import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class Estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: "Flutter es un set de herramientas UI para Apps Nativas",
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
      child: Container(),
    );
  }
}

