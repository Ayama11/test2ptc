import 'package:flutter/material.dart';
import 'package:test2ptc/core/utils/color_manger.dart';

abstract class Styles {
  static const textStyle50 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 50);

  static const textStyle22 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 22);
  static const textStyle14 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14);
  static const textStyle12 = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12, color: ColorApp.grayText);
  static const textStyle30 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );
  static const textStyle14w500 = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: ColorApp.grayTextColor);

  static const textStyle20 = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w300, color: ColorApp.whiteColor);

  static const textStyle20black = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  //     TextStyle(fontSize: 13, fontWeight: FontWeight.w300)
  static const textStyle13 = TextStyle(
      fontSize: 13, fontWeight: FontWeight.w300, color: ColorApp.whiteColor);
}
