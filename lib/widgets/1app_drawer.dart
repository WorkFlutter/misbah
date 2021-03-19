import 'package:flutter/material.dart';
import 'package:misbah/widgets/0app_bar.dart';

import '../const.dart';

class MyAppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: (218 / size.width) * size.width,
        child: Padding(
          padding: EdgeInsets.only(top: (80 / size.height) * size.height),
          child: Drawer(
            child: Container(
              color: Color(0xff013668),
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xff013668),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                    ),
                    accountName: Text(
                      "محمد خليفة",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: SizedBox(
                      width: (218 / size.width) * size.width,
                      child: Row(
                        children: [
                          Text('الرصيد المتبقي'),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            'اعلانات  6',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff217BC1)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: (218 / size.width) * size.width,
                    height: 550 / size.height * size.height,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: drawerTile.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: Image.asset(drawerIcons[index]),
                        title: Text(
                          drawerTile[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
