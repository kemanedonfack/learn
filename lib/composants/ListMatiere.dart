import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';

class ListMatiere extends StatefulWidget {
  @override
  _ListMatiereState createState() => _ListMatiereState();
}

class _ListMatiereState extends State<ListMatiere> {

  List<Matiere> matiere = [
    Matiere("Mathématique", "12 Leçons", "images/Mathematique.jpg"),
    Matiere("informatique", "14 Leçons", "images/info.jpg"),
    Matiere("Histoire", "12 Leçons", "images/histoire.jpg"),
    Matiere("Géographie", "12 Leçons", "images/geo.jpg"),
    Matiere("Science de la vie et de la terre", "12 Leçons", "images/svt.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 8.0),
        itemCount: matiere.length, scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
//                colorFilter: ColorFilter.mode(primaire.withOpacity(0.2), BlendMode.color),
                image: AssetImage(matiere[index].image),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
                padding: EdgeInsets.only(top: 10, left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(matiere[index].titre,
                      style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600, ),
                    ),
                    Text(matiere[index].lecons,
                      style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
          );
        });
  }
}

class Matiere {
  String titre;
  String lecons;
  String image;

  Matiere(String titre, String lecons, String image){
    this.lecons = lecons;
    this.image = image;
    this.titre = titre;
  }

}
