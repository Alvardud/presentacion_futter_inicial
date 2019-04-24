import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';
import 'package:flare_flutter/flare_actor.dart';

class EjemploFlare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Flare',
      cuerpo: cuerpo(),
    );
  }
}

class cuerpo extends StatefulWidget {
  @override
  _cuerpoState createState() => _cuerpoState();
}

class _cuerpoState extends State<cuerpo>{

  String _animation;

  initState(){
    _animation = 'idle';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Expanded(
           child: InkWell(

             //TODO: arreglar controladores de la animacion

             child: FlareActor('assets/my-teddy.flr',
               alignment: Alignment.center,
               fit: BoxFit.contain,
               animation: _animation,
               isPaused: false,
             ),
             onTap: (){
               setState(() {
                 _animation = "idle";
               });
             },
           )
         ),
          Container(height: 16.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Error!!!'),
                color: Colors.blue[800],
                textColor: Colors.white,
                onPressed: (){
                  setState((){
                    _animation = 'fail';
                  });
                },
              ),
              Container(width: 8.0,),
              RaisedButton(
                child: Text('Bien...'),
                color: Colors.blue[800],
                textColor: Colors.white,
                onPressed: (){
                  setState((){
                    _animation = 'success';
                  });
                },
              ),
            ],
          ),
          Container(height: 4.0,)
        ],
      ),
    );
  }
}
