import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class HerramientasNativas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Herramientas Nativas',
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
      ///padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child:estructura(acortador:true)),
          Expanded(child: estructura(acortador:false),)
        ],
      ),
    );
  }
}

class estructura extends StatelessWidget {

  final bool acortador;
  String _nombre1;
  String _nombre2;
  String _nombre3;
  IconData _icono1;
  IconData _icono2;
  IconData _icono3;

  estructura({
    this.acortador
  });

  @override
  Widget build(BuildContext context) {

    if(acortador){
      _nombre1 = "Camara";
      _nombre2 = "Ubicacion";
      _nombre3 = "Internet";
      _icono1 = Icons.camera_alt;
      _icono2 = Icons.gps_fixed;
      _icono3 = Icons.language;
    }else{
      _nombre1 = "Bluetooth";
      _nombre2 = "DataBase";
      _nombre3 = "Storage";
      _icono1 = Icons.bluetooth;
      _icono2 = Icons.art_track;
      _icono3 = Icons.collections;
    }

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          card(titulo:_nombre1,icono:_icono1),
          card(titulo:_nombre2,icono:_icono2),
          card(titulo:_nombre3,icono:_icono3),
        ],
      ),
    );
  }
}

class card extends StatelessWidget {

  final String titulo;
  final IconData icono;

  card({
    this.titulo,
    this.icono
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: 150.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(icono,size: 20.0,color: Colors.white,),
            Container(width: 8.0,),
            Text(titulo,style: TextStyle(
              color: Colors.white,
              fontSize: 16.0
            ),)
          ],
        ),
      ),
    );
  }
}

