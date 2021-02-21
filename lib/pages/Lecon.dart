import 'package:flutter/material.dart';
import 'package:learn/composants/draw.dart';
import 'package:learn/utile/couleur.dart';

class Lecon extends StatefulWidget {
  @override
  _LeconState createState() => _LeconState();
}

class _LeconState extends State<Lecon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 20, color: primaire), onPressed: Navigator.of(context).pop ),
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
                        icon: Icon(Icons.menu, size: 30, color: primaire,),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                  child: Image.asset("images/lecon.jpg", fit: BoxFit.cover,)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("PHP", style: new TextStyle(fontSize: 30, color: primaire, fontWeight: FontWeight.bold),),
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
              subtitle: Text("1 heure 20 minutes", style: TextStyle(color: primaire, fontSize: 10),)
            ),
            Container(
              decoration: BoxDecoration( color: primaire,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.skip_previous, color: Colors.white, size: 40,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.pause_circle_filled, color: Colors.white, size: 50),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.skip_next, color: Colors.white, size: 40),
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
