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
          Container(height: 34.0,),
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
      height: MediaQuery.of(context).size.height-105+21,
      width: MediaQuery.of(context).size.width,
      child: Container(),
    );
  }
}
