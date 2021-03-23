import 'package:flutter/material.dart';

class CriditCardWidget extends StatelessWidget {
  String image;
  String label;
  CriditCardWidget({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width - 223,
      height: size.height - 580,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.values[5]),
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Text(label),
      )),
    );
  }
}
