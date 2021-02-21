import 'package:flutter/material.dart';
import 'package:learn/pages/Login.dart';
import 'package:learn/pages/compte.dart';
import 'package:learn/pages/home2.dart';
import 'package:learn/pages/intro.dart';
import 'package:learn/pages/notification.dart';
import 'package:learn/pages/telechargement.dart';
import 'package:learn/utile/couleur.dart';

class Draw extends StatefulWidget {
  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("kemane donfack"),
            accountEmail: Text("kemanedonfack5@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundImage: AssetImage("images/kemilo.JPG"),
              ),
            ),
            decoration: new BoxDecoration(
              color: primaire,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home2() ));
            } ,
            child: ListTile(
              title: Text("Accueil"),
              leading: Icon(Icons.home, color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){} ,
            child: ListTile(
              title: Text("Mes cours"),
              leading: Icon(Icons.library_books , color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Telechargement() ));
            } ,
            child: ListTile(
              title: Text("Vidéos téléchargés"),
              leading: Icon(Icons.video_library, color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Compte() ));
            } ,
            child: ListTile(
              title: Text("Mon compte"),
              leading: Icon(Icons.account_circle, color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Message() ));
            } ,
            child: ListTile(
              title: Text("Notifications"),
              leading: Icon(Icons.notifications, color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SliderWidget() ));
            } ,
            child: ListTile(
              title: Text("Guide"),
              leading: Icon(Icons.help , color: primaire,),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login() ));
            } ,
            child: ListTile(
              title: Text("Déconnexion"),
              leading: Icon(Icons.logout, color: primaire,),
            ),
          ),
        ],
      ),
    );
  }
}
