
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/services/ApiConstans.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState() {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences pref) {
      if(pref.getString(USERID) == null){
        userid = '';
      }else{
        userid = pref.getString(USERID)!;
      }
          new Future.delayed(
              const Duration(seconds: 2),
              (() async {
                if(userid == null || userid == '' || userid.isEmpty) {
                  Navigator.pushNamed(context, login_navigation);
                }else{
                  Navigator.pushNamed(context, roleselect_navigation);
                }
              })
          );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child:Image(image: splashscreenlogo,)),
      ),
    );
  }
}

