import 'package:flutter/material.dart';
import 'package:presentacion_flutter/widgets/common.dart';

class EjemploAnimacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return estructuraSlide(
      title: 'Animaciones Nativas (Canvas y otros)',
      cuerpo: cuerpo(),
    );
  }
}

class cuerpo extends StatefulWidget {
  @override
  _cuerpoState createState() => _cuerpoState();
}

class _cuerpoState extends State<cuerpo>with TickerProviderStateMixin {

  double pad1;
  double pad2;
  double pad3;
  double pad4;
  double pad5;
  double pad6;
  double pad7;
  double pad8;
  double pad9;
  double pad0;

  Animation<double> animation1;
  Animation<double> animation2;
  Animation<double> animation3;
  Animation<double> animation4;
  Animation<double> animation5;
  Animation<double> animation6;
  Animation<double> animation7;
  Animation<double> animation8;
  Animation<double> animation9;
  Animation<double> animation0;

  AnimationController animationController1;
  AnimationController animationController2;
  AnimationController animationController3;
  AnimationController animationController4;
  AnimationController animationController5;
  AnimationController animationController6;
  AnimationController animationController7;
  AnimationController animationController8;
  AnimationController animationController9;
  AnimationController animationController0;

  initState(){
    super.initState();
    pad1 = 0.0;
    pad2 = 0.0;
    pad3 = 0.0;
    pad4 = 0.0;
    pad5 = 0.0;
    pad6 = 75.0;
    pad7 = 75.0;
    pad8 = 75.0;
    pad9 = 75.0;
    pad0 = 75.0;

    animationController1 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController2 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController3 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController4 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController5 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController6 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController7 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController8 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animationController0 = AnimationController(vsync: this,duration: Duration(seconds: 2));

    animation1 = Tween<double>(begin: -10.0,end: 0.0).animate(animationController1);
    animation2 = Tween<double>(begin: -30.0,end: 0.0).animate(animationController2);
    animation3 = Tween<double>(begin: -50.0,end: 0.0).animate(animationController3);
    animation4 = Tween<double>(begin: -55.0,end: 0.0).animate(animationController4);
    animation5 = Tween<double>(begin: -10.0,end: 0.0).animate(animationController5);
    animation6 = Tween<double>(begin: 105.0,end: 75.0).animate(animationController6);
    animation7 = Tween<double>(begin: 100.0,end: 75.0).animate(animationController7);
    animation8 = Tween<double>(begin: 125.0,end: 75.0).animate(animationController8);
    animation9 = Tween<double>(begin: 130.0,end: 75.0).animate(animationController9);
    animation0 = Tween<double>(begin: 105.0,end: 75.0).animate(animationController0);

    animation1.addListener((){
      setState(() {
      });
    });

    animation2.addListener((){
      setState(() {
      });
    });

    animation3.addListener((){
      setState(() {
      });
    });

    animation4.addListener((){
      setState(() {
      });
    });

    animation5.addListener((){
      setState(() {
      });
    });

    animation6.addListener((){
      setState(() {
      });
    });

    animation7.addListener((){
      setState(() {
      });
    });

    animation8.addListener((){
      setState(() {
      });
    });

    animation9.addListener((){
      setState(() {
      });
    });

    animation0.addListener((){
      setState(() {
      });
    });

    animation1.addStatusListener((status){});
    animation2.addStatusListener((status){});
    animation3.addStatusListener((status){});
    animation4.addStatusListener((status){});
    animation5.addStatusListener((status){});
    animation6.addStatusListener((status){});
    animation7.addStatusListener((status){});
    animation8.addStatusListener((status){});
    animation9.addStatusListener((status){});
    animation0.addStatusListener((status){});

    animationController1.forward();
    animationController2.forward();
    animationController3.forward();
    animationController4.forward();
    animationController5.forward();
    animationController6.forward();
    animationController7.forward();
    animationController8.forward();
    animationController9.forward();
    animationController0.forward();

  }

  animacionCerrar(){

    animationController1 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController2 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController3 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController4 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController5 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController6 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController7 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController8 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController0 = AnimationController(vsync: this,duration: Duration(seconds: 1));

    animation1 = Tween<double>(begin: -10.0,end: 0.0).animate(animationController1);
    animation2 = Tween<double>(begin: -30.0,end: 0.0).animate(animationController2);
    animation3 = Tween<double>(begin: -50.0,end: 0.0).animate(animationController3);
    animation4 = Tween<double>(begin: -55.0,end: 0.0).animate(animationController4);
    animation5 = Tween<double>(begin: -10.0,end: 0.0).animate(animationController5);
    animation6 = Tween<double>(begin: 105.0,end: 75.0).animate(animationController6);
    animation7 = Tween<double>(begin: 100.0,end: 75.0).animate(animationController7);
    animation8 = Tween<double>(begin: 125.0,end: 75.0).animate(animationController8);
    animation9 = Tween<double>(begin: 130.0,end: 75.0).animate(animationController9);
    animation0 = Tween<double>(begin: 105.0,end: 75.0).animate(animationController0);

    animation1.addListener((){
      setState(() {
      });
    });

    animation2.addListener((){
      setState(() {
      });
    });

    animation3.addListener((){
      setState(() {
      });
    });

    animation4.addListener((){
      setState(() {
      });
    });

    animation5.addListener((){
      setState(() {
      });
    });

    animation6.addListener((){
      setState(() {
      });
    });

    animation7.addListener((){
      setState(() {
      });
    });

    animation8.addListener((){
      setState(() {
      });
    });

    animation9.addListener((){
      setState(() {
      });
    });

    animation0.addListener((){
      setState(() {
      });
    });

    animation1.addStatusListener((status){});
    animation2.addStatusListener((status){});
    animation3.addStatusListener((status){});
    animation4.addStatusListener((status){});
    animation5.addStatusListener((status){});
    animation6.addStatusListener((status){});
    animation7.addStatusListener((status){});
    animation8.addStatusListener((status){});
    animation9.addStatusListener((status){});
    animation0.addStatusListener((status){});

    animationController1.forward();
    animationController2.forward();
    animationController3.forward();
    animationController4.forward();
    animationController5.forward();
    animationController6.forward();
    animationController7.forward();
    animationController8.forward();
    animationController9.forward();
    animationController0.forward();
  }

  animacionAbrir(){
    animationController1 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController2 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController3 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController4 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController5 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController6 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController7 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController8 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController9 = AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController0 = AnimationController(vsync: this,duration: Duration(seconds: 1));

    animation1 = Tween<double>(begin: pad1,end: -10.0).animate(animationController1);
    animation2 = Tween<double>(begin: pad2,end: -30.0).animate(animationController2);
    animation3 = Tween<double>(begin: pad3,end: -50.0).animate(animationController3);
    animation4 = Tween<double>(begin: pad4,end: -55.0).animate(animationController4);
    animation5 = Tween<double>(begin: pad5,end: -10.0).animate(animationController5);
    animation6 = Tween<double>(begin: pad6,end: 105.0).animate(animationController6);
    animation7 = Tween<double>(begin: pad7,end: 100.0).animate(animationController7);
    animation8 = Tween<double>(begin: pad8,end: 125.0).animate(animationController8);
    animation9 = Tween<double>(begin: pad9,end: 130.0).animate(animationController9);
    animation0 = Tween<double>(begin: pad0,end: 105.0).animate(animationController0);

    animation1.addListener((){
      setState(() {
      });
    });

    animation2.addListener((){
      setState(() {
      });
    });

    animation3.addListener((){
      setState(() {
      });
    });

    animation4.addListener((){
      setState(() {
      });
    });

    animation5.addListener((){
      setState(() {
      });
    });

    animation6.addListener((){
      setState(() {
      });
    });

    animation7.addListener((){
      setState(() {
      });
    });

    animation8.addListener((){
      setState(() {
      });
    });

    animation9.addListener((){
      setState(() {
      });
    });

    animation0.addListener((){
      setState(() {
      });
    });

    animation1.addStatusListener((status){});
    animation2.addStatusListener((status){});
    animation3.addStatusListener((status){});
    animation4.addStatusListener((status){});
    animation5.addStatusListener((status){});
    animation6.addStatusListener((status){});
    animation7.addStatusListener((status){});
    animation8.addStatusListener((status){});
    animation9.addStatusListener((status){});
    animation0.addStatusListener((status){});

    animationController1.forward();
    animationController2.forward();
    animationController3.forward();
    animationController4.forward();
    animationController5.forward();
    animationController6.forward();
    animationController7.forward();
    animationController8.forward();
    animationController9.forward();
    animationController0.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-105,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[


          Container(
            height: 150.0,
            width: 150.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(150.0),
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      child: Center(
                        child: FlutterLogo(size: 100.0,),
                      ),
                    ),
                  ),
                  Positioned(top: animation1.value,child: madera(),), //-10 - 0
                  Positioned(top: animation2.value,left: 30.0,child: madera(),), //-30 - 0
                  Positioned(top: animation3.value,left: 60.0,child: madera(),), //-50 - 0
                  Positioned(top: animation4.value,left: 90.0,child: madera(),), //-55 - 0
                  Positioned(top: animation5.value,left: 120.0,child: madera(),),  //-10 - 0
                  Positioned(top: animation6.value,child: madera(),),               //+30  - 75
                  Positioned(top: animation7.value,left: 30.0,child: madera(),),    //+25 - 75
                  Positioned(top: animation8.value,left: 60.0,child: madera(),),    //+50  - 75
                  Positioned(top: animation9.value,left: 90.0,child: madera(),),    //+55  -  75
                  Positioned(top: animation0.value,left: 120.0,child: madera(),)    //+30  -  75
                ],
              ),
            ),
          ),

          Container(height: 24.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Mostrar',style: TextStyle(color: Colors.white),),
                color: Colors.blue[900],
                onPressed: (){
                  animacionAbrir();
                },
              ),
              Container(width: 8.0,),
              RaisedButton(
                child: Text('Desaparecer',style: TextStyle(color: Colors.white),),
                color: Colors.blue[900],
                onPressed: (){
                  animacionCerrar();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class madera extends StatelessWidget {

  Color color1 = Color(0xFF261B14);
  Color color2 = Color(0xFF593E2E);
  Color color3 = Color(0xFF8C634A);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 75.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        gradient: LinearGradient(colors: [
          color1,
          color1,
          color1,
          color2,
          color2,
          color3,
          color2,
          color1,
        ])
      ),
    );
  }
}
