import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
enum Corner{topRight, topLeft, bottomRight, bottomLeft}
class BoxShadows {

  static BoxShadow lightshadowTopLeft = const BoxShadow(
      color: Colors.white,
      blurRadius: 15,
      spreadRadius: 1,
      offset: Offset(-4,-4));

  Offset corner(Corner corner){
    switch (corner){
      case Corner.topRight :
        return const Offset(-4, 4);
      case Corner.topLeft:
        return const Offset(-4, -4);
      case Corner.bottomRight:
        return const Offset(4, 4);
      case Corner.bottomLeft:
        return const Offset(4, -4);
    }
  }
}

