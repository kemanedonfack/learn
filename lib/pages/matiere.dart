import 'package:learn/composants/draw.dart';
import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';

import 'Lecon.dart';

class Matiere extends StatefulWidget {
  @override
  _MatiereState createState() => _MatiereState();
}

class _MatiereState extends State<Matiere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      backgroundColor: primaire,
        appBar: AppBar(
          leadingWidth: MediaQuery.of(context).size.width * 0.08,
          automaticallyImplyLeading: false,
          leading: Container(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 0, right: 15),
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 3,),
              child: IconButton(icon: Icon(Icons.arrow_back), onPressed: Navigator.of(context).pop ),
            ),
          ),
          backgroundColor: primaire,
          centerTitle: true,
          elevation: 0,
          actions: [
            InkWell(
              onTap: Navigator.of(context).pop,
              child: Padding(
                padding: EdgeInsets.only(left: 3,),
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
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: new Center(
                  child: new Text("PHP", style: new TextStyle(fontSize: 30, color: Colors.white),),
                ),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("images/kemilo.JPG"),
                            radius: 25,
                          ),
                        ),
                        Text("Kemane Donfack", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Lecon() ));
                      },
                      child: new ListTile(
                        leading: Container(
                          decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                            child: Text("1", style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                        subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                        trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                      ),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
                    ),
                    new ListTile(
                      leading: Container(
                        decoration: BoxDecoration(color: primaire.withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          child: Text("1", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      title: Text("Les variables", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),),
                      trailing: Icon(Icons.play_circle_filled, size: 40, color: primaire,),
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
