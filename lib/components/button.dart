
import 'package:flutter/material.dart';
import 'package:wait4me/res/index.dart';
import 'package:wait4me/utills/dynamic_widthandheight.dart';
import 'package:wait4me/utills/styles.dart';

class CustomButtom extends StatefulWidget {
  final GestureTapCallback onPressed;
  final bool showIcon;
  final String btnName;
  final double width;
  final double height;
  final bool circleBorder;
  final IconData?  icon;
  final Color btncolor;
  final double iconsize;

  CustomButtom(this.showIcon, this.btnName, this.width, this.height, this.onPressed, this.circleBorder,this.icon,this.btncolor,this.iconsize);
  _CustomeButtom createState() => _CustomeButtom();
}

class _CustomeButtom extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget> [
          Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: (){
                    widget.onPressed();
                  },
                  child: Container(
                    width: widget.width,
                    height: widget.height,
                    decoration:widget.circleBorder? BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color:widget.btncolor,
                    ):BoxDecoration(
                      color:widget.btncolor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget> [
                          Text(widget.btnName,
                              style: titleStyle),
                          SizedBox(width: getDevicewidth(context, 0.02)),
                          (widget.icon != null)? Icon(widget.icon, size: widget.iconsize, color:Colors. white,) : Container()
                        ]
                    ),
                  )
              )
          )
        ]
    );
  }

}