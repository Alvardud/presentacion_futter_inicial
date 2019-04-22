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
import 'package:presentacion_flutter/screens/slides/todosEntornos.dart';
import 'package:presentacion_flutter/screens/slides/Fuchsia.dart';
import 'package:presentacion_flutter/screens/slides/Entornos.dart';
import 'package:presentacion_flutter/screens/common/SlideUnaImagen.dart';
import 'package:presentacion_flutter/screens/slides/ComponentesFamiliaGoogle.dart';

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
    _tabController = TabController(length: 24, vsync: this);
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
          Estructura(),   //------------------->
          Caracteristicas(),
          DesarrolloRapido(),
          PresentacionTitulos(titulo: 'Que puedo desarrollar\ncon Flutter?',),
          SlideUnaImagen(titulo: 'Aplicaciones Moviles',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/Flutter-3.jpg',),//AplicacionesMoviles(),
          SlideUnaImagen(titulo: 'Aplicaciones de Escritorio',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/escritorio.png',),//AplicacionesEscritorio(),
          SlideUnaImagen(titulo: 'HummingBird',imageHeigth: 180.0,imageWidth: 600.0,direccion: 'assets/hummingbird.png',),//HummingBird(),
          TodosEntornos(),   //IOS, Android, Web, Windows, Linux
          Fuchsia(),
          Entornos(),   //AndroidStudio, Vscode, Xcode
          //TodoWidget(),
          SlideUnaImagen(titulo: 'Sintaxis Sencilla',imageHeigth: 300.0,imageWidth: 400.0,direccion: 'assets/codigo.png',),//EjemploSintaxis,
          //-----CatalogoWidgets
          SlideUnaImagen(titulo: 'Catalogo Widgets',imageWidth: 300.0,imageHeigth: 400.0,direccion: 'assets/catalogo1.png',),
          SlideUnaImagen(titulo: 'Catalogo Widgets',imageWidth: 300.0,imageHeigth: 400.0,direccion: 'assets/catalogo2.png',),
          //HerramientasNativas(),
          PresentacionTitulos(titulo: 'Animaciones',),
          //EjemploAnimacion(),
          //EjemploFlare(),
          ComponentesFamiliaGoogle(),
          Gracias(),
          //InformacionPersonalLinks()
        ],
      ),
    );
  }
}
