import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:misbah/screens/4ad_details.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/3adertise_widget.dart';

class Advertise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: MyAppBar(
        title: 'المسابيح الطبيعية ',
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 8,
            ),
            Advertisewidgit(
              advertiseName: 'مسابيح',
              price: '500',
              phone: '0597589460',
              viwes: '500',
            ),
            Advertisewidgit(
              advertiseName: 'مسابيح',
              price: '500',
              phone: '0597589460',
              viwes: '500',
            ),
            Advertisewidgit(
              onTap: (){
                Get.to(AdvertiseDetails());
              },
              advertiseName: 'مسابيح',
              price: '500',
              phone: '0597589460',
              viwes: '500',
            ),
          ],
        ),
      ),
    );
  }
}
