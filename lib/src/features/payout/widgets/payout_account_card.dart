import 'package:flutter/material.dart';

import '../../../data/models/account.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';
import '../../../shared/extension/ext_theme.dart';

class PayoutAccountCard extends StatelessWidget {
  final Accounts account;
  const PayoutAccountCard({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(context.spacingSm),
      margin: EdgeInsets.only(bottom: context.spacingSm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: ColorName.grayLight),
      ),
      child: Row(
        spacing: context.spacingMd,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue[100],
            child: Text(
              account.nama.initials,
              style: context.textTheme.bodyMedium,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                account.nama.orDefault,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: ColorName.textPrimary),
              ),
              Text(
                account.phone.orDefault,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: ColorName.textSub),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
