import 'package:flutter/material.dart';
import 'package:learn/composants/draw.dart';
import 'package:learn/utile/couleur.dart';

class Telechargement extends StatefulWidget {
  @override
  _TelechargementState createState() => _TelechargementState();
}

class _TelechargementState extends State<Telechargement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        backgroundColor: primaire,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 20,), onPressed: Navigator.of(context).pop ),
        title: Text("Téléchargements"),
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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Container(
                    child: Image.asset("images/lecon.jpg", fit: BoxFit.cover)
                ),
                title: Text("PHP - Les variables"),
                subtitle: Text("20 minutes", style: TextStyle(fontSize: 12, color: primaire),),
                trailing: Icon(Icons.more_vert, color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Container(
                    child: Image.asset("images/lecon.jpg", fit: BoxFit.cover)
                ),
                title: Text("PHP - Les variables"),
                subtitle: Text("20 minutes", style: TextStyle(fontSize: 12, color: primaire),),
                trailing: Icon(Icons.more_vert, color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Container(
                    child: Image.asset("images/lecon.jpg", fit: BoxFit.cover)
                ),
                title: Text("PHP - Les variables"),
                subtitle: Text("20 minutes", style: TextStyle(fontSize: 12, color: primaire),),
                trailing: Icon(Icons.more_vert, color: Colors.black,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: Container(
                    child: Image.asset("images/lecon.jpg", fit: BoxFit.cover)
                ),
                title: Text("PHP - Les variables"),
                subtitle: Text("20 minutes", style: TextStyle(fontSize: 12, color: primaire),),
                trailing: Icon(Icons.more_vert, color: Colors.black,),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
