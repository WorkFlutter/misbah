

import 'package:flutter/material.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xff056092),
    Color(0xff065D8E),
    Color(0xff055482),
    Color(0xff044770),
    Color(0xff022B4B),
  ],
).createShader(
  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);
