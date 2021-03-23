import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/const.dart';
import 'package:misbah/screens/5new_ad.dart';
import 'package:misbah/screens/6my_ads.dart';
import 'package:misbah/screens/7fav_list.dart';
import 'package:misbah/screens/8buy_backage.dart';

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
                    height: (550 / size.height) * size.height,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        builTile(icon: drawerIcons[0], label: drawerTile[0]),
                        builTile(
                            icon: drawerIcons[1],
                            label: drawerTile[1],
                            onTap: () {
                              Get.to(NewAdd());
                              Navigator.pop(context);
                            }),
                        builTile(
                            icon: drawerIcons[2],
                            label: drawerTile[2],
                            onTap: () {
                              Get.to(MyAdvertise());
                              Navigator.pop(context);
                            }),
                        builTile(
                            icon: drawerIcons[3],
                            label: drawerTile[3],
                            onTap: () {
                              Get.to(FavoriteList());
                              Navigator.pop(context);
                            }),
                        builTile(
                            icon: drawerIcons[4],
                            label: drawerTile[4],
                            onTap: () {
                              Get.to(BuyBackage());
                              Navigator.pop(context);
                            }),
                        builTile(icon: drawerIcons[5], label: drawerTile[5]),
                        builTile(icon: drawerIcons[6], label: drawerTile[6]),
                        builTile(icon: drawerIcons[7], label: drawerTile[7]),
                        builTile(icon: drawerIcons[8], label: drawerTile[8]),
                        builTile(icon: drawerIcons[9], label: drawerTile[9]),
                      ],
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

  Widget builTile({String icon, String label, Function onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(icon),
      title: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
