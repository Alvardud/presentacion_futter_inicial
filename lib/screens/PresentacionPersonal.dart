import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class PresentacionPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.0,left: 36.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(width: 116.0,),
              Titulo(),
            ]),
          Row(
            children: <Widget>[
              Foto(),
              Container(width: 16.0,),
              InformacionPersonal()
            ])
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        commonText(texto:'Hi!',color: Colors.black54,size: 48.0),
        commonText(texto:'my name is:',color:Colors.black54,size:20.0),
      ],
    );
  }
}

class Foto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          image: DecorationImage(
            image: AssetImage('assets/foto.jpg'),
          ),
        ),
      ),
    );
  }
}

//Pensar si colocar Gmail o LinkedIn tambien
class InformacionPersonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        commonText(texto: 'Alvaro Martinez Mancilla',color: Colors.black,size:20.0),
        Container(height: 4.0,),
        commonText(texto:'Co-Founder and mobile developer at AuroraSoft',color: Colors.black,size: 16.0,),
        Container(height: 4.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RedesSociales(nick: '@alvardud',direccionFoto: 'assets/twitter.png',),
            Container(width: 16.0,),//twitter
            RedesSociales(nick: 'alvardud',direccionFoto: 'assets/github.png',), //github
          ],
        ),
      ],
    );
  }
}

class RedesSociales extends StatelessWidget {

  String direccionFoto;
  String nick;

  RedesSociales({
    this.direccionFoto,
    this.nick
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 25.0,
          height: 25.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(direccionFoto),
              ),
            ),
          ),
        ),
        Container(width: 4.0,),
        Text(nick)
      ],
    );
  }
}
