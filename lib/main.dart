import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 760),
      allowFontScaling: false,
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'مسباح',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),

        ),
      ),
    );
  }
}

