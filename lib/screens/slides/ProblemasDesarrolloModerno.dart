import 'package:flutter/material.dart';

class ProblemasDesarrolloModerno extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(top: 16.0,bottom: 16.0,right: 8.0,left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulo(),
          picker(),
          cuerpo(),
        ],
      ),
    );
  }
}

class picker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 20.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: Colors.yellow[800]
      ),
    );
  }
}


class titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      child: Text('Retos de hoy en el desarrollo movil',style: TextStyle(
        fontSize: 22.0,
        color: Colors.blue[800],
      ),),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(16.0),
      child: Row(
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
            subtitle: 'Dos equipos, codigos base y herramientas'
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
        Text('\"Enfoque de plataformas cruzadas\"',style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0
        ),),
        elemento(icon:true,
            title: 'Desarrollo rapido',
            subtitle: 'Iteraciones rapidas, recarga caliente (hot reload)'
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
            subtitle: 'Los usuarios pueden notar facilmente la diferencia'
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    num==1?columna1:columna2;
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


