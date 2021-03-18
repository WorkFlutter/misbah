import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  List<Widget> widgets;

  MyAppBar({this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top - 1),
      child: widgets == null
          ? Container()
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: widgets,
            ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            Color(0xff135285),
            Color(0xff135285),
            Color(0xff022B4B),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[500],
            blurRadius: 20.0,
            spreadRadius: 1.0,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
