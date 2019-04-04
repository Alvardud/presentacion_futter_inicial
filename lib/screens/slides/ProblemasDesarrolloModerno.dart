import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class ProblemasDesarrolloModerno extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulo(title: 'Retos de hoy en el desarrollo movil',),
          picker(),
          cuerpo(),
          footer()
        ],
      ),
    );
  }
}


class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical:8.0,horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          columna(num:1),
          Padding(padding: EdgeInsets.symmetric(horizontal: 12.0)),
          columna(num:2)
        ],
      ),
    );
  }
}

class columna extends StatelessWidget {

  final int num;

  columna({this.num});

  Widget columna1(){
    return Column(
      children: <Widget>[
        Text('\"Enfoque sobre moviles\"',style: TextStyle(
          color: Colors.black54,
          fontSize: 18.0
        ),),
        Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
        elemento(icon:true,
          title: 'Alta calidad de Apps',
          subtitle: 'Integracion de plataformas y sistemas'
        ),
        elemento(icon:true,
            title: "Performance alto de UI\'s'",
            subtitle: 'Codigo nativo, GPU acelerado'
        ),
        elemento(icon:false,
            title: 'Debes buscar dos Apps',
            subtitle: 'Dos equipos, codigos base y\nherramientas'
        ),
        elemento(icon:false,
            title: "Marca y caracteristicas diferentes",
            subtitle: 'Diferntes versiones de dispositivos'
        ),
      ],
    );
  }

  Widget columna2(){
    return Column(
      children: <Widget>[
        Text('\"Enfoque de plataformas\ncruzadas\"',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
        ),),
        Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
        elemento(icon:true,
            title: 'Desarrollo rapido',
            subtitle: 'Iteraciones rapidas, recarga caliente\n(hot reload)'
        ),
        elemento(icon:true,
            title: "Portabilidad unica",
            subtitle: 'Un solo codigo base'
        ),
        elemento(icon:false,
            title: 'Performance pobre',
            subtitle: 'Lento, impredecible y sin fluidez'
        ),
        elemento(icon:false,
            title: "Aplicacion no nativa",
            subtitle: 'Los usuarios pueden notar facilmente\nla diferencia'
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if(num==1){
      return Container(
        height: MediaQuery.of(context).size.height,
        width: (MediaQuery.of(context).size.width/2)-28,
        child: columna1(),
      );
    }else{
      return Container(
        height: MediaQuery.of(context).size.height,
        width: (MediaQuery.of(context).size.width/2)-28,
        child: columna2(),
      );
    }
  }
}

class elemento extends StatelessWidget {

  final bool icon;
  final String title;
  final String subtitle;
  IconData _icon;
  Color _iconColor;

  elemento({this.title,this.icon,this.subtitle});

  @override
  Widget build(BuildContext context) {
    
    _icon = icon?Icons.check : Icons.close;
    _iconColor = icon? Colors.green : Colors.red;
    
    return Container(
      child: Row(
        children: <Widget>[
          Icon(_icon,size: 25.0,color: _iconColor,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 4.0),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title,style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold
              ),),
              Text(subtitle,style: TextStyle(
                fontSize: 14.0,
                  color: Colors.black54,
              ),)
            ],
          )
        ],
      ),
    );
  }
}


