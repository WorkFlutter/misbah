

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xff056092),
    Color(0xff065D8E),
    Color(0xff055482),
    Color(0xff044770),
    Color(0xff022B4B),
  ],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);


List<Widget> myWidgets(Size size){
  return [
    SizedBox(
      width: 18,
    ),
    Image.asset('assets/icons/add.png'),
    SizedBox(
      width: 5,
    ),
    SizedBox(
      width: 245 / 360 * size.width,
      height: 40 / 760 * size.height,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextField(
          cursorColor: Colors.black,
          cursorHeight: 16,
          decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 24,
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            hintText: 'البحث',
            hintStyle: TextStyle(fontSize: 12),
            fillColor: Color(0xffF1F1F1),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      width: 14,
    ),
    Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          Scaffold.of(context).openEndDrawer();
        },
        child: Icon(
          Icons.menu,
          size: 30,
          color: Colors.white,
        ),
      ),
    )
  ];
}