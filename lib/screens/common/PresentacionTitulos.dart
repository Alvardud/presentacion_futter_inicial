import 'package:flutter/material.dart';
import 'dart:math';

class PresentacionTitulos extends StatelessWidget {

  final String titulo;
  PresentacionTitulos({
    this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          ladoDerecho(titulo:titulo),
          Positioned(
            right: MediaQuery.of(context).size.width/2.3,
            bottom: -MediaQuery.of(context).size.height*1.5,
            height: MediaQuery.of(context).size.height*3,
            child: Transform.rotate(
                angle: -pi/4,
                child: ladoIzquierdo()),),
        ],
      ),
    );
  }
}

class ladoDerecho extends StatelessWidget {

  final String titulo;

  ladoDerecho({
    this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom:24.0,
          top: 48.0,
          left: 32.0,
          right: 50.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          //Expanded(child: Container()),
          Titulo(titulo:titulo),
          Expanded(child: Container(),),
        ],
      ),
    );
  }
}

class ladoIzquierdo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: girar este componente
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
      padding: EdgeInsets.only(
          top:50.0,
          bottom: 60.0,
          right: 50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Container(),),
          Transform.rotate(
              angle: pi/4,
              child: logo()),
          Container(
            margin: EdgeInsets.only(right: 20.0),),
        ],
      ),
    );
  }
}

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0)
      ),
      child: Center(
        child: Container(
          width: 70.0,
          height: 70.0,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}

class Titulo extends StatelessWidget {

  final String titulo;

  Titulo({
    this.titulo
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        titulo,
        style: TextStyle(
            fontSize: 36.0,
            color: Colors.black,
            fontWeight: FontWeight.w300
        )
    );
  }
}
