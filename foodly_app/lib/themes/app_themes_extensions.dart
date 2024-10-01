import 'package:flutter/material.dart';
import 'package:foodly_app/themes/app_colors.dart';

// untuk agar tidak copyWith agar clean code jadi untuk mengubah jenis font warna disini
extension XTextStyle on TextStyle{
TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
TextStyle get extralight => copyWith(fontWeight: FontWeight.w200);
TextStyle get light => copyWith(fontWeight: FontWeight.w300);
TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
TextStyle get black => copyWith(fontWeight: FontWeight.w900);

TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
TextStyle get underline => copyWith(decoration: TextDecoration.underline);
TextStyle get ellipsis => copyWith(overflow: TextOverflow.ellipsis);

TextStyle get white => copyWith(color: AppColors.white);
TextStyle get gray => copyWith(color: AppColors.grayColor);
TextStyle get mainColor => copyWith(color: AppColors.mainColor);
TextStyle get secondaryColor => copyWith(color: AppColors.secondaryColor);
}