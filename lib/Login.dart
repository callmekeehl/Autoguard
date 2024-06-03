import 'package:autoguard/Clipper.dart';
import 'package:autoguard/Colors_code.dart';
import 'package:autoguard/Sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

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
          },
          controller: emailController,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock_outline_rounded),
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
              return "Entrez votre Mot de passe";
            }
          },
          controller: emailController,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email_outlined),
              hintText: "Entrer votre Mot de passe"),
        ),
      );
    }

    final media = MediaQuery.of(context).size;

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            CustomPaint(
              size: Size(media.width, 250),
              painter: RPSCustomPainter(),
            ),
            Positioned(
                top: 16,
                right: -5,
                child: CustomPaint(
                  size: Size(media.width, 250),
                  painter: PSCustomPainter(),
                )),
            Positioned(
                top: 220,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Connexion",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Veuillez vous connecter pour continuer.",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
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
                height: 25,
              ),
              _buildEmail(),
              SizedBox(
                height: 20,
              ),
              _buildPassword(),
              SizedBox(
                height: 20,
              ),
              Text("Oublie ?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Tcolor.primaryColor3)),
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
                      "connexion",
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
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pas de compte ? ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Sign()));
                    },
                    child: Text(
                      "Créer un",
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
    ));
  }
}
