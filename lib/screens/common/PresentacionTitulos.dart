import 'package:flutter/material.dart';

class PresentacionTitulos extends StatelessWidget {

  final String titulo;
  PresentacionTitulos({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
    );
  }
}

