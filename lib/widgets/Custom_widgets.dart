import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 Widget _buildEmail(){
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          offset: Offset(3,3),
        )
      ]
    ),
    child: TextFormField(
      validator: (value) {
        if(value == null || value.isEmpty){
          return "Entrez votre Email";
        }
      },
    ),
  );
}