import 'package:flutter/material.dart';

import '../../assets/colors.gen.dart';
import '../../extension/ext_dimens.dart';
import '../../extension/ext_theme.dart';

enum GlobalButtonStyle { filled, outlined, text, icon }

class GlobalButton extends StatelessWidget {
  const GlobalButton.filled({
    super.key,
    this.padding,
    this.foregroundColor,
    this.backgroundColor,
    required this.onTap,
    required this.child,
    this.fullWidth = true,
    this.enable = true,
  })  : style = GlobalButtonStyle.filled,
        borderColor = null;

  const GlobalButton.outlined({
    super.key,
    this.padding,
    this.foregroundColor,
    this.borderColor,
    required this.onTap,
    required this.child,
    this.fullWidth = true,
    this.enable = true,
  })  : style = GlobalButtonStyle.outlined,
        backgroundColor = null;

  const GlobalButton.icon({
    super.key,
    required this.onTap,
    required this.child,
    required this.foregroundColor,
    this.fullWidth = true,
    this.enable = true,
  })  : style = GlobalButtonStyle.icon,
        backgroundColor = null,
        borderColor = null,
        padding = null;

  const GlobalButton.text({
    super.key,
    this.padding,
    this.foregroundColor,
    required this.onTap,
    required this.child,
    this.fullWidth = true,
    this.enable = true,
  })  : style = GlobalButtonStyle.text,
        backgroundColor = null,
        borderColor = null;

  final GlobalButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final VoidCallback onTap;
  final Widget child;
  final bool fullWidth;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case GlobalButtonStyle.filled:
        return SizedBox(
          width: fullWidth ? context.deviceWidth : null,
          child: FilledButton(
            onPressed: enable ? onTap : null,
            style: FilledButton.styleFrom(
              foregroundColor: foregroundColor ?? Colors.white,
              backgroundColor: backgroundColor ?? ColorName.primary,
              padding: padding ?? EdgeInsets.all(context.spacingMd),
              shape: const StadiumBorder(),
              textStyle: context.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            child: child,
          ),
        );
      case GlobalButtonStyle.outlined:
        return SizedBox(
          width: fullWidth ? context.deviceWidth : null,
          child: OutlinedButton(
            onPressed: enable ? onTap : null,
            style: OutlinedButton.styleFrom(
              foregroundColor: foregroundColor ?? ColorName.primary,
              side: BorderSide(color: borderColor ?? ColorName.primary),
              padding: padding ?? EdgeInsets.all(context.spacingMd),
              shape: const StadiumBorder(),
              textStyle: context.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            child: child,
          ),
        );
      case GlobalButtonStyle.text:
        return SizedBox(
          width: fullWidth ? context.deviceWidth : null,
          child: TextButton(
            onPressed: enable ? onTap : null,
            style: TextButton.styleFrom(
              foregroundColor: foregroundColor ?? ColorName.primary,
              padding: padding ?? EdgeInsets.all(context.spacingMd),
              shape: const StadiumBorder(),
              textStyle: context.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            child: child,
          ),
        );
      case GlobalButtonStyle.icon:
        return IntrinsicWidth(
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: context.spacingXs),
              constraints: BoxConstraints(
                minWidth: context.spacingXxlg * .7,
                minHeight: context.spacingXxlg * .7,
              ),
              decoration: BoxDecoration(
                color: foregroundColor!.withAlpha(17),
                borderRadius: BorderRadius.circular(context.spacingSm),
                border: Border.all(color: foregroundColor!.withAlpha(26)),
              ),
              child: child,
            ),
          ),
        );
    }
  }
}
