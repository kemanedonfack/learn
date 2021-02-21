import 'package:learn/pages/Mdp.dart';
import 'package:learn/utile/couleur.dart';
import 'package:flutter/material.dart';
import 'package:learn/pages/intro.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey();

  // controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool masquerMdp = true;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(
                children: <Widget>[
                  // Center(
                  //   child: Image.asset('images/login.png',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Container(
                    child: MyClipPath(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Login",textAlign: TextAlign.center,
                            style: TextStyle( color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0) ,
                child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // debut input de l'email
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.3),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.email, color: primaire,),
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


                        // debut input du mot de  passe
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8, top: 20),
                          child: Text("Mot de passe", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.3),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: masquerMdp,
                            decoration: InputDecoration(
                              icon: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.lock, color: primaire,),
                              ),
                             suffixIcon: GestureDetector(
                               onTap: (){
                                 setState(() {
                                   masquerMdp = !masquerMdp;
                                 });
                               },
                               child: masquerMdp ? Icon(Icons.visibility_off, color: primaire, ) : Icon(Icons.visibility, color: primaire, ),
                             ),
                              border: InputBorder.none,
                            ),
                            validator: (value){
                              if(value.isEmpty){
                                return 'Veillez entrer votre mot de passe';
                              }else if(value.length < 6){
                                return " le mot de passe doit contenir au moins 6 caractères";
                              }
                              return null;
                            },
                          ),
                        ),
                        // fin de l'input du mot de passe

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                              onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => new Mdp(),)) ) ,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 13),
                                child: Text("Mot de passe oublié ?", style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ],
                        ),

                        InkWell(
                          onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => new SliderWidget(),)) ),
                          child: Material(
                            borderRadius: BorderRadius.circular(10.0),
                            color: primaire ,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              child: Text("LOGIN",
                                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),

                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text("Vous n'avez pas de compte ?",
                                style: TextStyle(fontWeight: FontWeight.bold, color: primaire),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
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
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 250;
    path.lineTo(220.9999999999999 * _xScaling,0 * _yScaling);
    path.cubicTo(220.9999999999999 * _xScaling,0 * _yScaling,205.9509999999999 * _xScaling,24 * _yScaling,209.1919999999999 * _xScaling,60 * _yScaling,);
    path.cubicTo(212.43299999999988 * _xScaling,96 * _yScaling,265.9999999999999 * _xScaling,109 * _yScaling,265.9999999999999 * _xScaling,109 * _yScaling,);
    path.cubicTo(265.9999999999999 * _xScaling,109 * _yScaling,333.9999999999999 * _xScaling,113 * _yScaling,344.9999999999999 * _xScaling,161 * _yScaling,);
    path.cubicTo(355.9999999999999 * _xScaling,209 * _yScaling,432.9999999999999 * _xScaling,214 * _yScaling,432.9999999999999 * _xScaling,214 * _yScaling,);
    path.cubicTo(432.9999999999999 * _xScaling,214 * _yScaling,432.9999999999999 * _xScaling,0 * _yScaling,432.9999999999999 * _xScaling,0 * _yScaling,);
    path.cubicTo(432.9999999999999 * _xScaling,0 * _yScaling,220.9999999999999 * _xScaling,0 * _yScaling,220.9999999999999 * _xScaling,0 * _yScaling,);
    return path;
  }

  @override

  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}
