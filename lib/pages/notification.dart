import 'package:flutter/material.dart';
import 'package:learn/composants/draw.dart';
import 'package:learn/utile/couleur.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Draw(),
      appBar: AppBar(
        backgroundColor: primaire,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 20,), onPressed: Navigator.of(context).pop ),
        title: Text("Notifications"),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 1, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/kemilo.JPG"),
                radius: 30,
              ),
              title: Text("kemane à publié la leçon 3 de Flutter"),
              subtitle: Text("Aujourd'hui", style: TextStyle(color: primaire, fontSize: 10),),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/kemilo.JPG"),
                radius: 30,
              ),
              title: Text("kemane à publié la leçon 3 de Flutter"),
              subtitle: Text("Aujourd'hui", style: TextStyle(color: primaire, fontSize: 10),),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/kemilo.JPG"),
                radius: 30,
              ),
              title: Text("kemane à publié la leçon 3 de Flutter"),
              subtitle: Text("Aujourd'hui", style: TextStyle(color: primaire, fontSize: 10),),
            ),
          ],
        ),
      ),
    );
  }
}
