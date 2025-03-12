import 'package:flutter/material.dart';

extension DimensX on BuildContext {
  double get spacingXxs => 4.0;
  double get spacingXs => 8.0;
  double get spacingSm => 12.0;
  double get spacingMd => 16.0;
  double get spacingLg => 20.0;
  double get spacingXlg => 24.0;
  double get spacingXxlg => 56.0;
  double get spacingXxxlg => 80.0;

  double get pagePadding => spacingXlg;

  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get appBarHeight => statusBarHeight + kToolbarHeight;
  int get gridCount => 2;
  double get gridAspectRatio => 3;

  double get viewInsetsBottom => MediaQuery.of(this).viewInsets.bottom;
}

extension LayoutX on double {
  BorderRadius get borderRadius => BorderRadius.circular(this);
  Radius get radius => Radius.circular(this);
  SizedBox get vSpace => SizedBox(height: this);
  SizedBox get hSpace => SizedBox(width: this);
}
