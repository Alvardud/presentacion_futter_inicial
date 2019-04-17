import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:presentacion_flutter/screens/NombrePresentacion.dart';
import 'package:presentacion_flutter/screens/PresentacionPersonal.dart';
import 'package:presentacion_flutter/screens/common/PresentacionTitulos.dart';
import 'package:presentacion_flutter/screens/slides/ProblemasDesarrolloModerno.dart';
import 'package:presentacion_flutter/screens/slides/QueEsflutter.dart';
import 'package:presentacion_flutter/screens/slides/flutterCombina.dart';
import 'package:presentacion_flutter/screens/slides/estructura.dart';
import 'package:presentacion_flutter/screens/slides/LenguajeProgramacion.dart';
import 'package:presentacion_flutter/screens/slides/Caracteristicas.dart';
import 'package:presentacion_flutter/screens/slides/CaracteristicasDart.dart';
import 'package:presentacion_flutter/screens/slides/DesarrolloRapido.dart';
import 'package:presentacion_flutter/screens/Gracias.dart';


void main(){
  //TODO: quitar el color del status bar, como tambien obligar que la orientacion sea horizontal
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //TODO: hacer el controlador de apps como practica se utilizara un TabBarView
        body: Aplication(),
      ),
    );
  }
}

class Aplication extends StatefulWidget {
  @override
  _AplicationState createState() => _AplicationState();
}

class _AplicationState extends State<Aplication>with TickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    //TODO: cammbiar el numero de tabs
    _tabController = TabController(length: 13, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          NombrePresentacion(),
          PresentacionPersonal(),
          ProblemasDesarrolloModerno(),
          PresentacionTitulos(titulo: 'La Solucion:\n"Flutter"',),
          QueEsFlutter(),
          flutterCombina(),
          LenguajeProgramacion(),
          CaracteristicasDart(),
          Estructura(),
          Caracteristicas(),
          DesarrolloRapido(),
          PresentacionTitulos(titulo: 'Que puedo desarrollar\ncon Flutter?',),
          //AplicacionesMoviles(),
          //AplicacionesEscritorio(),
          //HummingBird(),
          //TodosEntornos(),   //IOS, Android, Web, Windows, Linux
          //Fuchsia(),
          //Entornos(),   //AndroidStudio, Vscode, Xcode
          //TodoWidget(),
          //EjemploSintaxis(),
          //CatalogoWidgets(),
          //HerramientasNativas(),
          //EjemploAnimacion(),
          //EjemploFlare(),
          //ComponentesFamiliaGoogle(),
          Gracias(),
          //InformacionPersonalLinks()
        ],
      ),
    );
  }
}
