import 'package:learn/composants/ListMatiere.dart';
import 'package:learn/composants/draw.dart';
import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final searchKey = GlobalKey();

  // controller
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Draw(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Builder(
                            builder: (BuildContext context){
                              return IconButton(
                                  icon: Icon(Icons.sort, size: 30, color: primaire),
                                  onPressed: ()  {
                                    Scaffold.of(context).openDrawer();
                                  }
                              );
                            }
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("images/kemilo.JPG"),
                          radius: 25,
                        ),
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Text("Salut Kemane,", textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 20),
                  child: Text("Chercher le cours de vous voulez apprendre", textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      key: searchKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // debut input de recherche
                          Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey.withOpacity(0.3),
                            child: TextFormField(
                              controller: searchController,
                              decoration: InputDecoration(
                                hintText: "Faites vos recherche ici",
                                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.search, ),
                                ),
                                border: InputBorder.none,
                              ),
                              validator: (value){
                                if(value.isNotEmpty){
                                  RegExp regex = new RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                                  if(!regex.hasMatch(value)){
                                    return "votre Adresse email invalide";
                                  }else{
                                    return null;
                                  }
                                }else{
                                  return "Veillez entrer une adresse email";
                                }
                              },
                            ),
                          ),
                          // fin de l'input email
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Matières", textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("voir tout", textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 16, color: primaire),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListMatiere(),
                ),
              ],
            ),
          ),
        )
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
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 250;
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
