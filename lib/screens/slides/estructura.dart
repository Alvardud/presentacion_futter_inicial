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
      child: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            arriba(),
            Container(height: 20.0,),
            abajo()
          ]
        )
      ),
    );
  }
}

class abajo extends StatelessWidget {

  double _width;

  @override
  Widget build(BuildContext context) {

    _width = MediaQuery.of(context).size.width-313;

    return Container(
      width: 420.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 97.0,
            child: Text('Engine\n(C++)',style:TextStyle(
              color: Colors.black54,fontSize: 18.0,),
              textAlign: TextAlign.end,
            ),
          ),
          Container(width: 12.0,),
          Row(
            children: <Widget>[
              card(color:Colors.blue[200],title:'Skia',cText:Colors.black,size:16.0,width:_width/3-8,),
              Container(width: 4.0,),
              card(color:Colors.blue[200],title:'Dart',cText:Colors.black,size:16.0,width:_width/3-8),
              Container(width: 4.0,),
              card(color:Colors.blue[200],title:'Text',cText:Colors.black,size:16.0,width:_width/3-8),
            ],
          )
        ],
      ),
    );
  }
}

class arriba extends StatelessWidget {

  double _width;

  @override
  Widget build(BuildContext context) {

    _width = MediaQuery.of(context).size.width-313;

    return Container(
      width: 420.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 97.0,
            child: Text('Framework\n(Dart)',style:TextStyle(
              color: Colors.black54,fontSize: 18.0,),
              textAlign: TextAlign.end,
            ),
          ),
          Container(width: 12.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  card(color:Colors.blue[900],title:'Material',cText:Colors.white,size:16.0,width:_width/2-12,),
                  Container(width: 8.0,),
                  card(color:Colors.blue[900],title:'Cupertino',cText:Colors.white,size:16.0,width:_width/2-12),
                ],
              ),
              Container(height: 4.0),
              card(color:Colors.blue[900],title:'Widgets',cText:Colors.white,size:16.0,width:_width-16,),
              Container(height: 4.0),
              card(color:Colors.blue[900],title:'Rendering',cText:Colors.white,size:16.0,width:_width-16,),
              Container(height: 4.0),
              Row(
                children: <Widget>[
                  card(color:Colors.blue[900],title:'Animation',cText:Colors.white,size:16.0,width:_width/3-8,),
                  Container(width: 4.0,),
                  card(color:Colors.blue[900],title:'Painting',cText:Colors.white,size:16.0,width:_width/3-8),
                  Container(width: 4.0,),
                  card(color:Colors.blue[900],title:'Gestures',cText:Colors.white,size:16.0,width:_width/3-8),
                ],
              ),
              Container(height: 4.0),
              card(color:Colors.blue[900],title:'Foundation',cText:Colors.white,size:16.0,width:_width-16,),
            ],
          )
        ],
      ),
    );
  }
}

class card extends StatelessWidget {

  final String title;
  final Color cText;
  final Color color;
  final double size;
  final double width;

  card({
    this.width,
    this.size,
    this.title,
    this.color,
    this.cText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 30.0,
      width: width,
      child: Center(
        child: Text(title,style: TextStyle(
          fontSize: size,
          color: cText,
        ),),
      ),
    );
  }
}

