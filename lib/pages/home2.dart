import 'package:flutter/cupertino.dart';
import 'package:learn/composants/draw.dart';
import 'package:learn/pages/Lecon.dart';
import 'package:learn/pages/Login.dart';
import 'package:learn/pages/Mdp.dart';
import 'package:learn/pages/matiere.dart';
import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';
import 'package:learn/pages/intro.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: primaire,
      drawer: Draw(),
      appBar: AppBar(
        backgroundColor: primaire,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back, size: 20,), onPressed: Navigator.of(context).pop ),
        title: Text("Accueil"),
        centerTitle: true,
        elevation: 0,
        actions: [
          InkWell(
            onTap: Navigator.of(context).pop,
            child: Padding(
              padding: EdgeInsets.only(left: 0,),
              child: Builder(
                  builder: (BuildContext context){
                    return IconButton(
                        icon: Icon(Icons.menu, size: 30),
                        onPressed: ()  {
                          Scaffold.of(context).openDrawer();
                        }
                    );
                  }
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Stack(
                children: <Widget>[
                  Container(
                    transform: Matrix4.translationValues(0.0 , -0.5, 0.0),
                    child: MyClipPath(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center ,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Salut !!", style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("Kemane Donfack", style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: MediaQuery.of(context).size.height * 0.09,
                            child: Image.asset("images/graphe.png",
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Image.asset('images/login.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                transform: Matrix4.translationValues(0.0 , -50, 0.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Matiere() ));
                      },
                      child: new Container(
                        margin: EdgeInsets.only(bottom: 30) ,
                        decoration: BoxDecoration(
                          color: primaire.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: new ListTile(
                          leading: Container(
                              width: MediaQuery.of(context).size.width*0.15,
                              child: Image.asset("images/php.png", fit: BoxFit.cover,)
                          ),
                          title: Text("PHP", style: TextStyle(color: Colors.white, fontSize: 20),),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text("45 heures, 12 leçons", style: TextStyle(color: primaire, fontSize: 10, fontWeight: FontWeight.bold),),
                          ),
                          trailing: Icon(Icons.play_circle_filled, color: primaire, size: 40,),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30) ,
                      decoration: BoxDecoration(
                        color: primaire.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Container(
                            width: MediaQuery.of(context).size.width*0.15,
                            child: Image.asset("images/flutter.png", fit: BoxFit.cover,)
                        ),
                        title: Text("Flutter", style: TextStyle(color: Colors.white, fontSize: 20),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("45 heures, 12 leçons", style: TextStyle(color: primaire, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        trailing: Icon(Icons.play_circle_filled, color: primaire, size: 40,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30) ,
                      decoration: BoxDecoration(
                        color: primaire.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Container(
                            width: MediaQuery.of(context).size.width*0.15,
                            child: Image.asset("images/oracl.png", fit: BoxFit.cover,)
                        ),
                        title: Text("Oracle", style: TextStyle(color: Colors.white, fontSize: 20),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("45 heures, 12 leçons", style: TextStyle(color: primaire, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        trailing: Icon(Icons.play_circle_filled, color: primaire, size: 40,),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30) ,
                      decoration: BoxDecoration(
                        color: primaire.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Container(
                            width: MediaQuery.of(context).size.width*0.15,
                            child: Image.asset("images/laravel.jpg", fit: BoxFit.cover,)
                        ),
                        title: Text("Laravel", style: TextStyle(color: Colors.white, fontSize: 20),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("45 heures, 12 leçons", style: TextStyle(color: primaire, fontSize: 10, fontWeight: FontWeight.bold),),
                        ),
                        trailing: Icon(Icons.play_circle_filled, color: primaire, size: 40,),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class MyClipPath extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        color: primaire,
      ),
    );
  }
}


class BottomWaveClipper extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 420;
    final double _yScaling = size.height / 450;
    path.lineTo(428 * _xScaling,229.5 * _yScaling);
    path.cubicTo(428 * _xScaling,229.5 * _yScaling,428 * _xScaling,0.5 * _yScaling,428 * _xScaling,0.5 * _yScaling,);
    path.cubicTo(428 * _xScaling,0.5 * _yScaling,-5 * _xScaling,0.5 * _yScaling,-5 * _xScaling,0.5 * _yScaling,);
    path.cubicTo(-5 * _xScaling,0.5 * _yScaling,-3.987000000000023 * _xScaling,316.5 * _yScaling,-3.987000000000023 * _xScaling,316.5 * _yScaling,);
    path.cubicTo(-3.987000000000023 * _xScaling,316.5 * _yScaling,9.687000000000012 * _xScaling,332 * _yScaling,53.24000000000001 * _xScaling,332 * _yScaling,);
    path.cubicTo(96.793 * _xScaling,332 * _yScaling,125.15300000000002 * _xScaling,291 * _yScaling,125.15300000000002 * _xScaling,291 * _yScaling,);
    path.cubicTo(125.15300000000002 * _xScaling,291 * _yScaling,163.64200000000002 * _xScaling,231.5 * _yScaling,217.324 * _xScaling,267.5 * _yScaling,);
    path.cubicTo(271.006 * _xScaling,303.5 * _yScaling,315.06600000000003 * _xScaling,296.5 * _yScaling,315.06600000000003 * _xScaling,296.5 * _yScaling,);
    path.cubicTo(315.06600000000003 * _xScaling,296.5 * _yScaling,342.919 * _xScaling,292 * _yScaling,370.773 * _xScaling,257 * _yScaling,);
    path.cubicTo(398.627 * _xScaling,222 * _yScaling,428 * _xScaling,229.5 * _yScaling,428 * _xScaling,229.5 * _yScaling,);
    path.cubicTo(428 * _xScaling,229.5 * _yScaling,428 * _xScaling,229.5 * _yScaling,428 * _xScaling,229.5 * _yScaling,);
    return path;
  }

  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}