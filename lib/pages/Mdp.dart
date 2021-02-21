import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:learn/utile/couleur.dart';

class Mdp extends StatefulWidget {
  @override
  _MdpState createState() => _MdpState();
}

class _MdpState extends State<Mdp> {


  final formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: Navigator.of(context).pop ),
        title: Text("Mot de passe oublié ?"),
        backgroundColor: primaire,
        elevation: 1.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset("images/mdp.jpg"),
              ),
              Center(
                child: Text("Réintialiser votre Mot de passe", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
                child: Center(
                  child: Text("Un nouveau mot de passe vous sera envoyé par email", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        // debut input de l'email
                        Material(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey.withOpacity(0.3),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "Adresse email",
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

                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: InkWell(
//                        onTap: (() => Navigator.push(context, MaterialPageRoute(builder: (context) => )) ),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              color: primaire,
                              child: MaterialButton(
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text("Envoyé",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
