
import 'package:wait4me/res/index.dart';

String? validatename(value){
  if(value.isEmpty){
    return firstnamereq;
  }
}

String? validatelname(value){
  if(value.isEmpty){
    return lastnamereq;
  }
}

String? validateaddress(value){
  if(value.isEmpty){
    return addressreq;
  }
}

String? validateemail(value) {
  if (value.isEmpty) {
    return emailreq;
  }
  if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
    return emailnotvalid;
  }
}

String? validatephone(value) {
  if (value.isEmpty) {
    return phonenumreq;
  }
  if (!RegExp(r"^\d{10}$").hasMatch(value)) {
    return phonenumnotvalid;
  }
}

String? validatepass(value){
  if(value.isEmpty){
    return passwordreq;
  } if(!RegExp( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$').hasMatch(value)){
    return  passwordnotvalid;
    //Todo: Implementation for future
    //"Password length should be 6-10,at least one upper case,\nlower case,digit and Special character";
  }
  //Todo: Implementation for future 
  // else if(value.length<6){
  //   return "Should be At Least 6 characters";
  // }else if(value.length>10) {
  //   return "Should not be more than 10 characters";
  // }
  return null;
}
