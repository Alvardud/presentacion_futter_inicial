import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class Caracteristicas extends StatelessWidget {
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
      height: MediaQuery.of(context).size.height-105+55,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: contenedorImagenes(),
      ),
    );
  }
}

class contenedorImagenes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(child: card(direccion: 'assets/fasticono.png',nombre: 'Alta Velocidad\nde Desarrollo',width: 75.0,heigth:75.0,textoSize: 20.0,)),
          Expanded(child: card(direccion: 'assets/icons8-google_code.png',nombre: 'Herramienta Flexible\ny Expresiva',width: 75.0,heigth:75.0,textoSize: 20.0,)),
          Expanded(child: cardApps()),
        ],
      ),
    );
  }
}

class cardApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 75.0,
                width: 75.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/androidicon.png'),
                    ),
                  ),
                ),
              ),
              Container(
                height: 75.0,
                width: 75.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/iosicon.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(height: 8.0,),
          Text('Nativo iOS App\ny Android',style: TextStyle(
              color: Colors.black54,fontSize: 20.0
          ),textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}


class card extends StatelessWidget {

  final String direccion;
  final double textoSize;
  final String nombre;
  final double width;
  final double heigth;

  card({
    this.textoSize,
    this.heigth,
    this.width,
    this.direccion,
    this.nombre
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: heigth,
            width: width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(direccion),
                ),
              ),
            ),
          ),
          Container(height: 8.0,),
          Text(nombre,style: TextStyle(
              color: Colors.black54,fontSize: textoSize
          ),)
        ],
      ),
    );
  }
}
