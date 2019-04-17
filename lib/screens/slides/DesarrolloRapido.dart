import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class DesarrolloRapido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titulo(title: 'Alta velocidad de Desarrollo',),
              picker(),
              cuerpo(),
            ],
          ),
        ),
        Positioned(child: fondo(),left: MediaQuery.of(context).size.width/2,)
      ],
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical:8.0,horizontal: 32.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: texto(),),
              Expanded(child: Container(),)
            ],
          ),
    );
  }
}

class texto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: commonText(texto: '*  Recargas en sub-segundos',color: Colors.black54,size: 16.0),),
        Expanded(child: commonText(texto: '*  Iteraciones rapidas en las \n   caracteristicas',color: Colors.black54,size: 16.0),),
        Expanded(child: commonText(texto: '*  Prueba tu aplicacion mas rapido',color: Colors.black54,size: 16.0),),
        Expanded(child: commonText(texto: '*  Mayor tiempo para Experimentar \n   en tu app',color: Colors.black54,size: 16.0),),
        Expanded(child: commonText(texto: '*  Unico codigo base para tus apps',color: Colors.black54,size: 16.0),),
        Expanded(child: Text('Ganancia de productividad x3',
          style: TextStyle(color: Colors.black54,fontSize: 16.0,fontWeight: FontWeight.bold),),)
      ]
    );
  }
}

class fondo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width/2,
      color: Colors.blue[800],
    );
  }
}

