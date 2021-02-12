

 import 'package:flutter/material.dart';

Widget baseText({title,size,color,fontWeight ,  spacing}){
  return Text(
    title,softWrap: true,
    style: TextStyle(
        fontSize: size,
        fontFamily: 'GoogleSans',
        fontWeight: fontWeight,
        color: color,
      wordSpacing: spacing
    ),
  );
 }



 Widget appTitle(){
   return Text(
     "SpaceX",softWrap: true,
     style: TextStyle(
         fontSize: 20,
         fontFamily: 'GoogleSans',
         fontWeight: FontWeight.bold,
         color: Colors.white),
   );
 }
