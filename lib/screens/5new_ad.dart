import 'package:dashed_container/dashed_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/6drop_menu.dart';

class NewAdd extends StatefulWidget {
  @override
  _NewAddState createState() => _NewAddState();
}

enum AdsType { Special, Normal }

class _NewAddState extends State<NewAdd> {
  AdsType adsType = AdsType.Normal;
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'إعلان جديد',
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Text(
                  'نوع الإعلان',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'عادي',
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: Radio(
                        value: AdsType.Normal,
                        groupValue: adsType,
                        onChanged: (value) {
                          adsType = value;
                          setState(() {});
                        },
                      ),
                      trailing: Text(
                        'عدد الإعلانات المتبقية 5',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff217BC1)),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'مميز',
                        style: TextStyle(fontSize: 14),
                      ),
                      leading: Radio(
                        value: AdsType.Special,
                        groupValue: adsType,
                        onChanged: (value) {
                          adsType = value;
                          setState(() {});
                        },
                      ),
                      trailing: Text(
                        'عدد الإعلانات المتبقية 1',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff65EF60)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 145 / size.width * size.width,
                    height: 145 / size.height * size.height,
                    decoration: BoxDecoration(
                      color: Color(0xffDBCBCB),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          Text(
                            'أضف صورة رئيسية',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            '''سيرى الناس هذه الصورة عند ظهور إعلانك
في نتائج البحث ''',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DashedContainer(
                    child: Container(
                      width: 145 / size.width * size.width,
                      height: 145 / size.height * size.height,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset('assets/icons/gallery.png'),
                              onPressed: () {},
                            ),
                            Text(
                              'أضف (3) صور إضافية',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '''قدم إعلانك بشكل أفضل للمشترين''',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                    dashColor: Colors.black,
                    dashedLength: 10,
                    strokeWidth: 1,
                    borderRadius: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 33),
                child: Text(
                  'الوصف',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    height: 45 / size.height * size.height,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'العنوان',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    height: 45 / size.height * size.height,
                    child: DropMenu(
                      title: 'القسم',
                      onChanged: (d) {
                        dropdownValue = d;
                      },
                      dropValue: 'dd',
                      myMenu: ['dd', 'ds', 'da'],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}