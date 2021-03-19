import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/1home.dart';
import 'package:misbah/screens/2msabih.dart';
import 'package:misbah/screens/3advertise.dart';
import 'package:misbah/widgets/3adertise_widget.dart';

import 'screens/0splash.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'مسباح',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Arial'),
        home: Splash(),
      ),
    );
  }
}
