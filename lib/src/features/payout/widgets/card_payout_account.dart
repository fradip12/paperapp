import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_router.gr.dart';
import '../../../domain/entity/ets_account.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';
import '../managers/payout_bloc.dart';

class PayoutAccountCard extends StatelessWidget {
  final AccountEts account;
  final bool useBorder;
  const PayoutAccountCard({
    super.key,
    required this.account,
    this.useBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(const PayoutPaymentConfirmationRoute());
        context.read<PayoutBloc>().add(PayoutEvent.selectAccount(account));
      },
      child: Container(
        padding:
            useBorder ? EdgeInsets.all(context.spacingSm) : EdgeInsets.zero,
        margin: useBorder
            ? EdgeInsets.only(bottom: context.spacingSm)
            : EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: useBorder ? Border.all(color: ColorName.grayLight) : null,
        ),
        child: Row(
          spacing: context.spacingMd,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: GlobalText.label(value: account.nama.initials),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalText.label(
                  value: account.nama.orDefault,
                  color: ColorName.textPrimary,
                ),
                GlobalText.caption(
                  value: account.phone.orDefault,
                  color: ColorName.textSub,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
