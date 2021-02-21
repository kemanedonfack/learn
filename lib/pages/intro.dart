import 'package:learn/pages/home2.dart';
import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'home.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
          title: "Recherche",
          marginTitle: EdgeInsets.only(top: 40),
          styleTitle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),

          pathImage: "images/recherche.jpg",
          heightImage: 300,

          description:
          "Rechercez vos différentes matières et leçons dans la barre de recheche",
          styleDescription: TextStyle(fontSize: 15, color: Colors.grey),
          marginDescription: EdgeInsets.symmetric(horizontal: 10),
          backgroundColor: Colors.white
      ),
    );
    slides.add(
      new Slide(
          title: "Lire le cours choisis",
          marginTitle: EdgeInsets.only(top: 40),
          styleTitle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),

          pathImage: "images/lire.png",
          heightImage: 300,

          description:
          "Lisez attentivement les cours mises a votre disposition par vos enseignants",
          styleDescription: TextStyle(fontSize: 15, color: Colors.grey),
          marginDescription: EdgeInsets.symmetric(horizontal: 10),
          backgroundColor: Colors.white
      ),
    );
    slides.add(
      new Slide(
          title: "Quizz",
          marginTitle: EdgeInsets.only(top: 40),
          styleTitle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),

          pathImage: "images/quizz.jpg",
          heightImage: 300,

          description:
          "Après une lecture minutieuse du cours repondez au question du quizz proposer par votre enseignant",
          styleDescription: TextStyle(fontSize: 15, color: Colors.grey),
          marginDescription: EdgeInsets.symmetric(horizontal: 10),
          backgroundColor: Colors.white
      ),
    );
    slides.add(
      new Slide(
          title: "Commencer",
          marginTitle: EdgeInsets.only(top: 40),
          styleTitle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),

          pathImage: "images/commencer.jpg",
          heightImage: 300,

//          description:
//          "Après une lecture minutieuse du cours repondez au question du quizz proposer par votre enseignant",
//          styleDescription: TextStyle(fontSize: 15, color: Colors.grey),
//          marginDescription: EdgeInsets.symmetric(horizontal: 10),
          backgroundColor: Colors.white
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      nameNextBtn: "Suivant",
      nameSkipBtn: "Passer",
      nameDoneBtn: "Commencer",
      namePrevBtn: "Précédent",
      styleNamePrevBtn: TextStyle(color: primaire),
      styleNameDoneBtn: TextStyle(color: primaire),
      styleNameSkipBtn: TextStyle(color: primaire),
      colorActiveDot: primaire,
      colorDot: primaire.withOpacity(0.5),
      widthDoneBtn: MediaQuery.of(context).size.width *0.36,
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}