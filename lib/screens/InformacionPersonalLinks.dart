import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class InformacionPersonalLinks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24.0,left: 36.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Column(
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
          Positioned(child: Enlace(),top: 50.0,right: 50.0,)
        ],
      )
    );
  }
}

class Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        commonText(texto:'Puedes encontrarme en:',color:Colors.black54,size:20.0),
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
class InformacionPersonal extends StatefulWidget {
  @override
  _InformacionPersonalState createState() => _InformacionPersonalState();
}

class _InformacionPersonalState extends State<InformacionPersonal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              child: RedesSociales(nick: '@alvardud',direccionFoto: 'assets/twitter.png',),
              onTap: (){

               /* _web = new webView(
                  enlace:"https://twitter.com/alvardud",
                  titulo: "Twitter");

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> webView())
                );*/
              },
            ),
            Container(width: 16.0,),//twitter
            InkWell(
              child: RedesSociales(nick: 'alvardud',direccionFoto: 'assets/github.png',),
              onTap: (){
                /*
                _web = new webView(
                  enlace:"https://github.com/Alvardud/",
                  titulo: "GitHub",);

                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> _web)
                );*/
              },
            ), //github
          ],
        ),
        Container(height: 4.0,),
        commonText(texto: 'Alvaro Martinez Mancilla',color: Colors.black,size:20.0),
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

class Enlace extends StatefulWidget {

  @override
  _EnlaceState createState() => _EnlaceState();
}

class _EnlaceState extends State<Enlace> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 75.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.blue[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Repositorio del Proyecto",style:TextStyle(fontSize: 16.0,color: Colors.black54,fontWeight: FontWeight.bold)),
            commonText(texto: "github.com/Alvardud/\npresentacion_futter_inicial",size: 12.0,color: Colors.black,)
          ],
        ),
      ),
      onTap: (){
        /*_web = new webView(
          enlace: "https://github.com/Alvardud/presentacion_futter_inicial",
          titulo: "Repositorio del Proyecto",);

        Navigator.push(context,
          MaterialPageRoute(builder: (context)=> _web)
        );*/
      },
    );
  }
}

