
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:wait4me/actions/register_action.dart';
import 'package:wait4me/components/button.dart';
import 'package:wait4me/components/loader.dart';
import 'package:wait4me/components/showdialog.dart';
import 'package:wait4me/components/textfieldValidation.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/models/register/register_model.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/utills/dynamic_widthandheight.dart';
import 'package:wait4me/utills/function.dart';
import 'package:wait4me/utills/styles.dart';
import 'package:wait4me/models/errormodel.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

 enum SingingCharacter {Male,Female}
 class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String userName = '';
  FocusNode firstNameField = FocusNode();
  FocusNode lastNameField = FocusNode();
  FocusNode emailField = FocusNode();
  FocusNode passwordField = FocusNode();
  FocusNode confirmPasswordField = FocusNode();
  FocusNode phoneField = FocusNode();
  FocusNode addressField = FocusNode();
  FocusNode dateField = FocusNode();
  var emailController= TextEditingController();
  var firstNameController= TextEditingController();
  var lastNameController= TextEditingController();
  var passwordController= TextEditingController();
  var cpasswordController= TextEditingController();
  var phoneController= TextEditingController();
  var addressController= TextEditingController();
  var confirmPasswordController = TextEditingController();
  bool showPassword1 = true;
  String groupValue='';
  SingingCharacter? _character = SingingCharacter.Male;
  bool conpassErrorValid=false;
  bool conpassValid=false;
  String conpass='';
  bool maleValue=true;
  bool loader=false;
  String gender='male';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, RegisterProps>(
        converter: (store) => mapStateToProps(store),
        builder: (context, props) {
          if (props.loading==true) {
            loader=true;
          }
          else if(props.registers!=null) {
            loader = false;
            props.clearpropsreg("true");
            Timer( Duration(milliseconds: 500), (){
              Navigator.pushNamed(context, login_navigation);
            });
          }else if (props.error != null) {
            loader=false;
            Timer(Duration(milliseconds: 100), (){
              Showdialog.displaydialog(props.error!.error.toString(), context);
            });
            props.clearpropsreg('true');
          }
          return Scaffold(
            backgroundColor:white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          blue,
                          lightblue
                        ])
                ),
              ),
              title: Text(signup,style: titleStyle,),
            ),
            resizeToAvoidBottomInset: true,
            body: Stack(
                children: [
                  GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child:SafeArea(
                        child: SingleChildScrollView(
                          child:Form(
                            key: formkey,
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding:  EdgeInsets.all(17),
                                child: Column(
                                  children: [
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(firstNameController, firstname,firstNameField,lastNameField,[WhitelistingTextInputFormatter(RegExp(r"[a-zA-Z]+|\s"))],false, validatename,false,false,firstnamereq,"", null,RegExp(r"^[a-zA-Z](\/?[0-9a-z])*"),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(lastNameController,lastname,lastNameField,emailField, [WhitelistingTextInputFormatter(RegExp(r"[a-zA-Z]+|\s"))],false, validatelname,false,false,lastnamereq,"", null,RegExp(r"^[a-zA-Z](\/?[0-9a-z])*"),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(emailController,email,emailField,phoneField,null,false,validateemail,true,false, emailreq, emailnotvalid,null, RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(phoneController,phonenumber, phoneField,addressField,[FilteringTextInputFormatter.digitsOnly],false,validatephone,false,true,phonenumreq,"Phonenumber not valid",null,RegExp(r"^\d{10}$"),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(addressController, address,addressField,passwordField,null,false, validateaddress,false,false,addressreq,"", null,RegExp(r"^[a-zA-Z](\/?[0-9a-z])*"),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    MyTextFormField(passwordController,password,passwordField,confirmPasswordField,null,true, validatepass,false,false,passwordreq,passwordnotvalid,null,RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$'),false),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    TextFormField(
                                      focusNode: confirmPasswordField,
                                      controller:confirmPasswordController,
                                      keyboardType: TextInputType.text,
                                      obscureText: showPassword1,
                                      decoration: InputDecoration(
                                        suffixIcon:
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              showPassword1 = !showPassword1;
                                            });
                                          },
                                          icon:showPassword1 ? Icon(Icons.visibility_off,color:Colors.black26,):Icon(Icons.visibility,color: Colors.grey,),
                                        ),
                                        border: underlineborderstyle,
                                        labelText: confirmpassword,
                                        labelStyle: TextStyle(fontSize: 18,fontFamily: 'Lato-Regular',color:greytext),
                                        errorText: conpassErrorValid ?conpass.isEmpty ? reenterpassword : passwordnotmatch : null,
                                      ),
                                      textInputAction: TextInputAction.done,
                                      onChanged: (value) {
                                        if(value.isNotEmpty) {
                                          if (passwordController.text !=
                                              confirmPasswordController.text) {
                                            setState(() {
                                              conpassErrorValid = true;
                                              conpass=value;
                                            });
                                          } else {
                                            setState(() {
                                              conpassErrorValid = false;
                                              conpass=value;
                                            });
                                          }
                                        }else{
                                          setState(() {
                                            conpass='';
                                            conpassErrorValid=true;
                                          });
                                        }
                                      },
                                      onFieldSubmitted: (value) {
                                        formkey.currentState!.validate();
                                        if (validatepass(value) == null) {
                                          FocusScope.of(context).unfocus();
                                        } else {
                                          FocusScope.of(context).requestFocus(confirmPasswordField);
                                        }
                                      },
                                      validator: ( value) {
                                        if (value!.isEmpty) {
                                          return reenterpassword;
                                        }
                                        if (passwordController.text != confirmPasswordController.text) {
                                          return passwordnotmatch;
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height:getDeviceheight(context, 0.02),),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width:getDevicewidth(context,0.03) ,),
                                        Transform.scale(
                                            scale: 1.5,
                                            child: Radio<SingingCharacter>(
                                              value: SingingCharacter.Male,
                                              groupValue: _character,
                                              onChanged: (SingingCharacter? value){
                                                setState(() {
                                                  gender='male';
                                                  _character=value;
                                                  maleValue=true;
                                                });
                                              },
                                              activeColor:Colors.red,
                                            )),
                                        Text(male,style:TextStyle(fontSize: 16,fontFamily: 'Lato-Bold',color: maleValue?redtext:darkgrey)),
                                        SizedBox(width:getDevicewidth(context,0.18) ,),
                                        Transform.scale(
                                          scale: 1.5,
                                          child:Radio<SingingCharacter>(
                                              value: SingingCharacter.Female,
                                              groupValue: _character,
                                              activeColor:Colors.red,
                                              onChanged: (SingingCharacter? value) {
                                                setState(() {
                                                  gender='female';
                                                  _character = value;
                                                  maleValue=false;
                                                });
                                              }
                                          ),
                                        ),
                                        Text(female,style:TextStyle(fontSize: 16,fontFamily: 'Lato-Bold',color: maleValue?darkgrey:redtext))
                                      ],
                                    ),
                                    SizedBox(height:getDeviceheight(context, 0.02),),
                                    CustomButtom(false,register, getDevicewidth(context, 0.9),
                                        getDeviceheight(context, 0.07), () {
                                          final form = formkey.currentState;
                                          if (form!.validate()) {
                                            var registerDetails = {
                                              "firstName": firstNameController.text,
                                              "lastName": lastNameController.text,
                                              "phoneNumber": countrycode +"-"+phoneController.text,
                                              "email": emailController.text,
                                              "gender": gender.toString(),
                                              "password":  passwordController.text,
                                              "confirmPassword": confirmPasswordController.text,
                                              "location": addressController.text,
                                              "roleType": "",
                                              "about": ""
                                            };
                                            props.registerapi(registerDetails);
                                          }
                                        },false,null,red,0),
                                    SizedBox(height:getDeviceheight(context, 0.01),),
                                    TextButton(onPressed: (){
                                      Navigator.popAndPushNamed(context, splashscreen_navigation);
                                    }, child:Text(login,style: titleStyleblack,))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                  loader?CommonModalLoader():Container(),
                ]),
          );
        }
    );
  }
}

class RegisterProps {
  final bool? loading;
  final Error? error;
  final RegisterModel? registers;
  final Function registerapi;
  final Function clearpropsreg;

  RegisterProps({
    this.loading,
    this.error,
    this.registers,
    required this.registerapi,
    required this.clearpropsreg,
  });
}
RegisterProps mapStateToProps(Store<AppState> store) {
  return RegisterProps(
      loading: store.state.register.loading,
      error: store.state.register.error,
      registers: store.state.register.registered,
      registerapi: (data)=>store.dispatch(registeraction(data)),
      clearpropsreg: (data) => store.dispatch(clearpropsregister(data))
  );
}

