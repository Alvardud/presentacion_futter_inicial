import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue[800],
      child: Center(
        child: cuerpo(),
      ),
    );
  }
}

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('\"Todo en Flutter \nson Widgets\"',style: TextStyle(
          fontSize: 48.0,
          color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Container(height: 48.0,),
        Text('(Pero no todas las herramientas de desarrollo son Widgets)',style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
