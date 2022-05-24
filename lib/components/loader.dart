
import 'package:flutter/material.dart';

class CommonModalLoader extends StatefulWidget {

  @override
  _CommonModalLoaderState createState() => _CommonModalLoaderState();
}

class _CommonModalLoaderState extends State<CommonModalLoader> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color:Colors.black26,
        child: Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        )
    ) ;
  }
}