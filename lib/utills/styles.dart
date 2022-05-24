
import 'package:flutter/material.dart';
import 'package:wait4me/res/font.dart';
import 'package:wait4me/res/index.dart';

//Border Styles
final borderstyle = new OutlineInputBorder(borderSide: BorderSide(color: white, width: 1.0),
  borderRadius: const BorderRadius.all(const Radius.circular(0.0),),);

final focusborder = OutlineInputBorder(borderSide: BorderSide(color: greyborder,width: 1.0 ));

final outlineborder = new OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, color: Colors.white, width: 1.0));

final underlineborderstyle = UnderlineInputBorder(borderSide: BorderSide(color:lightgrey ,width: 1.3 ));

final phoneFieldstyle = UnderlineInputBorder(borderSide: BorderSide(color:white ,width: 1.0 ));

final border = OutlineInputBorder(borderSide: BorderSide(color: greylight,width: 1.0 ));

//TextStyles
final titleStyle = TextStyle(fontSize: 16,fontFamily: latoBold, color: white);

final titleStyleblack = TextStyle(fontSize: 16,fontFamily: latoBold, color: black);

final labelStylegrey = TextStyle(fontSize: 18,fontFamily: latoRegular, color: greytext);

final labelStylewhite = TextStyle(fontSize: 18,fontFamily: latoLight, color: white);

final inputStyle = TextStyle(fontSize: 16,fontFamily: latoRegular, color: black);

final usdStyle = TextStyle(fontSize: 12,fontFamily: latoRegular, color: blackgrey);

final rateexceedStyle = TextStyle(fontSize: 14, fontFamily: latoBold, color: blackmedium);


//Input decoration styles
InputDecoration buildInputDecoration() {
  return InputDecoration(
      labelStyle:TextStyle(fontSize: 18,fontFamily: latoRegular, color:greytext),
      focusedBorder:focusborder,
      border:focusborder,
      enabledBorder:focusborder
  );
}

InputDecoration paymentInputDecoration( String Hintext) {
  return InputDecoration(
    hintText: Hintext,
    hintStyle: TextStyle(fontSize: 16, fontFamily: latoRegular, color: greylighttext),
    focusedBorder: border,
    border: border,
    enabledBorder: border,
  );
}
InputDecoration rateInputDecoration() {
  return InputDecoration(
    hintText: "Rate Per Hour",
    hintStyle:TextStyle(fontSize: 12,fontFamily: 'Lato-Regular',color: blackgrey),
    focusedBorder:focusborder,
    border:focusborder,
    enabledBorder:focusborder,
    isDense: true,
    //contentPadding: EdgeInsets.all(8),
  );
}