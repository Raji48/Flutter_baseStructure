import 'package:flutter/material.dart';
import 'package:wait4me/res/index.dart';

class Showdialog{
  static  displaydialog(String message,BuildContext context) {
   return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: 2), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(
            backgroundColor: lightgrey,
            title: Center(child: Text(message, style: TextStyle(fontSize: 17,fontFamily: latoBlack,color: Colors.black),)),
          );
        });
  }
  }
