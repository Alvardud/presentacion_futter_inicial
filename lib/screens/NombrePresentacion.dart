import 'dart:math';

import 'package:flutter/material.dart';

class NombrePresentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          ladoIzquierdo(),
          Positioned(
            left: MediaQuery.of(context).size.width/1.6,
            bottom: -MediaQuery.of(context).size.height/1.8,
            height: MediaQuery.of(context).size.height*1.5,
            child: Transform.rotate(angle: pi/4,
              child: ladoDerecho()),),
        ],
      ),
    );
  }
}

 class ladoIzquierdo extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.only(bottom:24.0,top: 48.0,left: 32.0),
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Colors.white,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Titulo(),
           Expanded(child: Container(),),
           DatosPersonales(),
         ],
       ),
     );
   }
 }

 class ladoDerecho extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     //TODO: girar este componente
     return Container(
       width: MediaQuery.of(context).size.width/2,
       height: MediaQuery.of(context).size.height,
       color: Colors.blue,
       padding: EdgeInsets.only(top:50.0,bottom: 60.0),
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Padding(padding: EdgeInsets.only(left: 110.0),),
           Transform.rotate(angle: -pi/4,
               child: logo()),
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
   @override
   Widget build(BuildContext context) {
     return Text(
       'Que puedo hacer\ncon Flutter?',
        style: TextStyle(
         fontSize: 36.0,
         color: Colors.black,
         fontWeight: FontWeight.w300
        )
     );
   }
 }

 class DatosPersonales extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: Row(
         children: <Widget>[
           FotoPerfil(),
           Container(width:16.0),
           Datos(),
         ],
       ),
     );
   }
 }

class FotoPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 50.0,
        height: 50.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            image: DecorationImage(
              image: AssetImage('assets/foto.jpg'),
            ),
          ),
        ),
    );
  }
}

class Datos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Alvaro Martinez Mancilla',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0
            ),),
          Container(height: 4.0),
          Text('@alvardud',
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),),
        ],
      ),
    );
  }
}
