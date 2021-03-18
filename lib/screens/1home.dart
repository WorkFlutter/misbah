import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/1app_drawer.dart';

import '../const.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);
    return Scaffold(
      endDrawer: MyAppDrawer(),
      appBar: MyAppBar(
        widgets: myWidgets(size),
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
