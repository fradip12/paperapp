import 'package:flutter/material.dart';

import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/extension/ext_dimens.dart';

class InformationCard extends StatelessWidget {
  final String message;
  final Color borderColor;
  final Color backgroundColor;

  const InformationCard({
    super.key,
    required this.message,
    this.borderColor = const Color(0xFFEFCB66),
    this.backgroundColor = const Color(0xFFFFF8E7),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: context.spacingSm,
        vertical: context.spacingXs,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(context.spacingSm),
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.spacingSm),
        child: Row(
          spacing: context.spacingSm,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: Colors.orange,
              size: context.spacingMd,
            ),
            Expanded(
                child: GlobalText.caption(
              value: message,
              color: ColorName.textPrimary,
            )),
          ],
        ),
      ),
    );
  }
}
