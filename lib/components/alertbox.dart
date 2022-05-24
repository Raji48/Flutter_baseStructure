import 'package:flutter/material.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/utills/dynamic_widthandheight.dart';

class BaseAlertDialog{
  static dialogbox(alertTitle, alertText, BuildContext context,VoidCallback onPressed) {
    return showDialog(
        context:context,
        builder: (BuildContext context) {
          return AlertDialog(
              contentPadding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 2.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(alertTitle,style: TextStyle(fontSize: 16,fontFamily: latoBold, color: black)),
                        SizedBox(height: getDeviceheight(context, 0.015),),
                        Divider(color: greyborder,thickness: 1 ),
                        TextButton(
                          onPressed: (){},
                          child: Text(alertText,style: TextStyle(fontSize: 16,fontFamily: latoBold, color: darkskyblue)),
                        )
                      ]))
          );
        });
  }
}