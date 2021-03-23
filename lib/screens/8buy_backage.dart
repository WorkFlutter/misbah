import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:misbah/widgets/0app_bar.dart';
import 'package:misbah/widgets/5gradient_button.dart';
import 'package:misbah/widgets/8buybackage_widget.dart';
import 'package:misbah/widgets/9criditcard_widget.dart';

class BuyBackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MyAppBar(
        title: 'شراء الباقة',
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: size.height - 290,
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),

                  //scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 45, left: 30, right: 30),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '5 KD',
                            adNum: '7  إعلانات',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 45, left: 30, right: 30),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '1 KD',
                            adNum: 'إعلانات 1',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 30, right: 30, bottom: 20),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: 'إعلان مميز',
                            price: '1 KD',
                            adNum: '',
                            duration: 'إسبوع في الواجهة الرئيسية',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 30, right: 30, bottom: 20),
                      child: InkWell(
                        child: GridTile(
                          child: Buybackagewidget(
                            label: '',
                            price: '10 KD',
                            adNum: 'إعلان 15',
                            duration: 'لمدة 14 يوم',
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'اختر طريقة الدفع',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: GestureDetector(
                      child: CriditCardWidget(
                        image: 'assets/images/visa.png',
                        label: 'فيزا/ماستر',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: GestureDetector(
                      child: CriditCardWidget(
                        image: 'assets/images/knet.png',
                        label: 'كي نت',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: Container(
                    width: size.width - 200,
                    height: size.height - 640,
                    child: GradientButton(
                      label: 'ادفع',
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
