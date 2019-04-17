import 'package:flutter/material.dart';

class picker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.0,
      margin: EdgeInsets.only(right: 8.0,left: 16.0,bottom: 16.0),
      width: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.yellow[800]
      ),
    );
  }
}


class titulo extends StatelessWidget {

  final String title;

  titulo({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.0,
      margin: EdgeInsets.only(right:16.0,left: 16.0,top: 4.0),
      padding: EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: Text(title,style: TextStyle(
        fontSize: 22.0,
        color: Colors.blue[800],
      ),),
    );
  }
}

class footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
      height: 32.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
          children:<Widget>[
            Expanded(child:Container()),
            FlutterLogo(size: 24.0,)
          ]
      ),
    );
  }
}

class commonText extends StatelessWidget {

  final String texto;
  final Color color;
  final double size;

  commonText({
    this.size,
    this.color,
    this.texto
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}

class estructuraSlide extends StatelessWidget {

  final String title;
  final Widget cuerpo;

  estructuraSlide({
    this.title,
    this.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          titulo(title: title,),
          picker(),
          cuerpo,
          footer()
        ],
      ),
    );
  }
}

