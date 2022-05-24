

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/utills/styles.dart';

class MyTextFormField extends StatefulWidget {
  String labelText;
  bool isPassword=false;
  dynamic validator;
  bool isEmail=false;
  bool isnum=false;
  String errorText;
  String subErrorText;
  dynamic  inputformat;
  FocusNode focusField;
  dynamic nextFocusField;
  TextEditingController textcontroller;
  dynamic onTap;
  RegExp regExp;
  final bool underlineborderDecoration;

  MyTextFormField(
      this.textcontroller,
      this.labelText,
      this.focusField,
      this.nextFocusField,
      this.inputformat,
      this.isPassword ,
      this.validator,
      this.isEmail ,
      this.isnum,
      this.errorText,
      this.subErrorText,
      this.onTap,
      this.regExp,
      this.underlineborderDecoration,
      );

  @override
  _MyTextFormFieldState createState() => _MyTextFormFieldState();
}


class _MyTextFormFieldState extends State<MyTextFormField> {
  bool _textErrorValid=false;
  bool _textValid=false;
  String userName='';
  bool showPassword = true;
  void initState(){
    _textErrorValid=false;
    _textValid=false;
    userName='';
    showPassword = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.textcontroller,
        focusNode:widget.focusField,
        inputFormatters:widget.inputformat,
        maxLength: widget.isnum?10:widget.isPassword?8:null,
        style: widget.underlineborderDecoration?TextStyle(fontFamily: latoRegular, fontSize: 16, color: Colors.white):null,
        decoration: InputDecoration(
            labelText: widget.labelText,
         labelStyle:widget.underlineborderDecoration?labelStylewhite:labelStylegrey,
          errorText: _textErrorValid ? (userName.isEmpty ? widget.errorText : widget.subErrorText) : null,
            enabledBorder: widget.underlineborderDecoration?borderstyle:underlineborderstyle,
            border: widget.underlineborderDecoration?borderstyle:underlineborderstyle,
            focusedBorder: widget.underlineborderDecoration?borderstyle:underlineborderstyle,
          counterText: "",
          suffixIcon:
          widget.isPassword ? IconButton(
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            icon:showPassword ? Icon(Icons.visibility_off,color:Colors.black26,):Icon(Icons.visibility,color: Colors.grey,),

          ):null,
            prefixIcon:widget.isnum? CountryCodePicker(
                initialSelection: 'IN',
                showDropDownButton: true,
                onChanged: (e) {
                  setState(() {
                    countrycode = e.toString();
                  });
                  print(e.toString());
                }
            ):null
        ),
        obscureText: widget.isPassword ? showPassword :false,
        onChanged: (text) {
          _update(text, 1);
          if (text.isNotEmpty) {
            if (widget.regExp.hasMatch(text)) {
              setState(() {
                _textErrorValid = false;
              });
            } else {
              setState(() {
                _textValid = true;
                _textErrorValid = true;
              });
            }
          } else {
            setState(() {
              _textValid = true;
              _textErrorValid = true;
            });
          }
        },
        onFieldSubmitted: (text) {
          if (text.isNotEmpty) {
            if (widget.regExp.hasMatch(text)) {
              setState(() {
                _textErrorValid = false;
              });
              FocusScope.of(context).requestFocus(widget.nextFocusField);
            } else {
              setState(() {
                _textValid = true;
                _textErrorValid = true;
              });
              FocusScope.of(context).requestFocus(widget.focusField);
            }
          } else {
            setState(() {
              _textValid = true;
              _textErrorValid = true;
            });
            FocusScope.of(context).requestFocus(widget.focusField);
          }
        },

        keyboardType: widget.isEmail ? TextInputType.emailAddress : widget.isnum?TextInputType.number:TextInputType.text,
        onTap: widget.onTap,
        validator: widget.validator,
      );
  }

  _update(text, type) {
    if(widget.regExp.hasMatch(text)){
      setState(() {
        userName = text;
        _textErrorValid = false;
      });
      return userName;
    } else {
      setState(() {
        userName = text;
      });
    }
  }
}

