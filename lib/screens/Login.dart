import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wait4me/actions/login_action.dart';
import 'package:wait4me/components/button.dart';
import 'package:wait4me/components/loader.dart';
import 'package:wait4me/components/showdialog.dart';
import 'package:wait4me/components/textfieldValidation.dart';
import 'package:wait4me/models/app_state.dart';
import 'package:wait4me/models/login/login_model.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/res/regex.dart';
import 'package:wait4me/screens/roleselect.dart';
import 'package:wait4me/services/index.dart';
import 'package:wait4me/utills/dynamic_widthandheight.dart';
import 'package:wait4me/utills/function.dart';
import 'package:wait4me/models/errormodel.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  FocusNode usernamefield = FocusNode();
  FocusNode passwordfield = FocusNode();
  bool loader = false;

  _loginPressed(LoginScreenProps props) async {
    var data = {
      'userName': userNamecontroller.text,
      'password': Passwordcontroller.text,
    };
    props.loginApi!(data);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginScreenProps>(
        converter: (store) => LoginScreenProps().mapStateToProps(store),
        builder: (context, props) {
          if (props.loading == true) {
            loader = true;
          } else {
            if (props.error != null) {
              loader = false;
              Timer( Duration(milliseconds: 100), (){
                Showdialog.displaydialog(props.error!.error.toString(), context);
              });
              props.clearprops('true');
            } else if (props.success != null) {
              loader = false;
              userid = props.success!.sucess.userId.toString();
              save();
              props.clearprops('true');
              Timer(Duration(milliseconds: 500), () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoleSelect()));
              });
            }
          }
          return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: Stack(
                children: <Widget>[
                  initialWidget(props, context),
                  loader ? CommonModalLoader():Container(),
                ],
              ));
        });
  }

  initialWidget(LoginScreenProps props, BuildContext context) {
    return Container(
      height: getDeviceheight(context, 1),
      width: getDevicewidth(context, 1),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/loginbg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child:Form(
      key: formkey,
      child:Column(
        children: <Widget>[
          SizedBox(
            height: getDeviceheight(context, 0.2),
          ),
          Text(
            wait4me,
            style: TextStyle(
                fontFamily: "Lato-Bold", fontSize: 30, color: Colors.white),),
          Container(
              padding: EdgeInsets.fromLTRB(
                  getDevicewidth(context, 0.05),
                  getDeviceheight(context, 0.05),
                  getDevicewidth(context, 0.05),
                  getDeviceheight(context, 0.05)),
             child: MyTextFormField(userNamecontroller, mail, usernamefield, passwordfield, null, false, validateemail, true, false, emailreq, emailnotvalid,null, emailRegex, true),
          ),
          Container(
              padding: EdgeInsets.only(
                  left: getDevicewidth(context, 0.05),
                  right: getDevicewidth(context, 0.05),
                  bottom: getDeviceheight(context, 0.01)),
              child: MyTextFormField( Passwordcontroller, pass, passwordfield, '', null,true, validatepass,false,false,passwordreq,passwordnotvalid, null, passwordRegex, true),
          ),
          Padding(
            padding:EdgeInsets.only(
            right: getDevicewidth(context, 0.05),bottom: getDeviceheight(context, 0.05)),
            child:Align(
             alignment: Alignment.topRight,
             child: TextButton(
                child:Text(forgetPassword,style: TextStyle(fontFamily: 'Lato-Regular', color:Colors.white, fontSize: 16,),),
              onPressed: (){
               Navigator.pushNamed(context, forgetpassword_navigation);
              },
            ),
           ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: getDevicewidth(context, 0.05),
                right: getDevicewidth(context, 0.05),
                bottom: getDeviceheight(context, 0.05)),
            child: CustomButtom(false, loginstring, getDevicewidth(context, 0.9),
                getDeviceheight(context, 0.07), () {
                 final form = formkey.currentState;
                if (form!.validate()) {
                  _loginPressed(props);
                }
                }, false,null,red,0),
          ),
          Container(
              child: InkWell(
                child: Container(
                  width: getDevicewidth(context, 1),
                  padding: EdgeInsets.only(
                      left: getDevicewidth(context, 0.05),
                      right: getDevicewidth(context, 0.05),
                      bottom: getDeviceheight(context, 0.05)),
                  child: Text(
                    createaccount,
                    style: TextStyle(
                      fontFamily: 'Lato-Regular',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, register_navigation);
                },
              )),
        ],
      ),
      ),
    );
  }
  save() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(USERID, userid);
  }
}

class LoginScreenProps {
  final bool? loading;
  final Login_Model? success;
  final Error? error;
  final dynamic clearprops;
  final Function? loginApi;

  LoginScreenProps(
      {this.loading, this.success, this.error, this.loginApi, this.clearprops});

  LoginScreenProps mapStateToProps(Store<AppState> store) {
    return LoginScreenProps(
      loading: store.state.login.loading,
      success: store.state.login.success,
      error: store.state.login.error,
      loginApi: (data) => store.dispatch(loginAction(data)),
      clearprops: (data) => store.dispatch(clearpropsLogin(data)),
    );
  }
}
