import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misbah/widgets/0app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        widgets: [
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
          GestureDetector(
            child: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
