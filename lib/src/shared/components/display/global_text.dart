import 'package:flutter/material.dart';

import '../../assets/colors.gen.dart';
import '../../extension/ext_theme.dart';

enum GlobalTextType { title, label, caption }

class GlobalText extends StatelessWidget {
  final String value;
  final GlobalTextType type;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;
  const GlobalText.title({
    super.key,
    required this.value,
    this.size,
    this.color = ColorName.textPrimary,
    this.fontWeight = FontWeight.bold,
  }) : type = GlobalTextType.title;
  const GlobalText.label({
    super.key,
    required this.value,
    this.size,
    this.color = ColorName.textPrimary,
    this.fontWeight = FontWeight.normal,
  }) : type = GlobalTextType.label;
  const GlobalText.caption({
    super.key,
    required this.value,
    this.size,
    this.color = ColorName.textSub,
    this.fontWeight = FontWeight.normal,
  }) : type = GlobalTextType.caption;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case GlobalTextType.title:
        return Text(
          value,
          style: context.textTheme.bodyLarge?.copyWith(
            fontSize: size,
            color: color,
            fontWeight: fontWeight,
          ),
        );
      case GlobalTextType.label:
        return Text(
          value,
          style: context.textTheme.bodyMedium?.copyWith(
            fontSize: size,
            color: color,
            fontWeight: fontWeight,
          ),
        );
      case GlobalTextType.caption:
        return Text(
          value,
          style: context.textTheme.bodySmall?.copyWith(
            fontSize: size,
            color: color,
            fontWeight: fontWeight,
          ),
        );
    }
  }
}
