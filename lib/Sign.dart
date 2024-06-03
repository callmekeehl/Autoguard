import 'package:autoguard/Clipper.dart';
import 'package:autoguard/Colors_code.dart';
import 'package:autoguard/Login.dart';
import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPassword = TextEditingController();
  var nameController = TextEditingController();
  var surnameController = TextEditingController();

  Widget _buildName() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
        )
      ]),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Entrez votre Nom";
          }
          return null; // Added this line
        },
        controller: nameController,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.person),
            hintText: "Entrer votre Nom"),
      ),
    );
  }

  Widget _buildSurname() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
        )
      ]),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Entrez votre prénom";
          }
          return null; // Added this line
        },
        controller: surnameController,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.person_outline),
            hintText: "Entrer votre prénom"),
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
        )
      ]),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Entrez votre Email";
          }
          return null; // Added this line
        },
        controller: emailController,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.email_outlined),
            hintText: "Entrer votre email"),
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
        )
      ]),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Entrez votre mot de passe";
          }
          return null; // Added this line
        },
        controller: passwordController,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock_outline_rounded),
            hintText: "Entrer votre mot de passe"),
      ),
    );
  }

  Widget _buildConfirmPassword() {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(3, 3),
        )
      ]),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Confimez votre mot de passe";
          }
          return null; // Added this line
        },
        controller: confirmPassword,
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock),
            hintText: "Confirmez votre mot de passe"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(media.width, 250), // Adjusted the size here
                painter: RPSCustomPainter(),
              ),
              Positioned(
                  top: 16,
                  right: -5,
                  child: CustomPaint(
                    size: Size(media.width, 250), // Adjusted the size here
                    painter: PSCustomPainter(),
                  )),
              Positioned(
                  top: 140, // Adjusted the position here
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Créer Compte ",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 26),
                      ),
                      SizedBox(
                        height: 5, // Reduced the height here
                      ),
                      Text(
                        "Veuillez creer un compte pour continuer.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 17),
                      )
                    ],
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                ),
                _buildName(),
                SizedBox(
                  height: 20,
                ),
                _buildSurname(),
                SizedBox(
                  height: 20,
                ),
                _buildEmail(),
                SizedBox(
                  height: 20,
                ),
                _buildPassword(),
                SizedBox(
                  height: 20,
                ),
                _buildConfirmPassword(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Color(0xff9DCEFF), Color(0xff60b3dc)])),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "CREER",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous avez déjà un compte ? ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Text(
                        "Connetez-vous",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Tcolor.primaryColor3),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
