import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/2categories.dart';

class Msabih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'المسابيح',
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(top: size.height *0.25),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                GestureDetector(
                  child: Categories(
                    image: 'assets/images/industrial.png',
                    label: 'مصنع',
                  ),
                  onTap: () {},
                ),
                GestureDetector(
                  child: Categories(
                    image: 'assets/images/masabih.png',
                    label: 'طبيعي',
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}