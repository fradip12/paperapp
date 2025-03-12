import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_button.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../managers/payout_bloc.dart';
import '../widgets/view_payment_recipient_bank.dart';
import '../widgets/view_payout_recipient.dart';

@RoutePage()
class PayoutPaymentConfirmationPage extends StatelessWidget {
  const PayoutPaymentConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const GlobalText.title(
              value: 'Pembayaran Invoice',
              color: Colors.white,
            ),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
          bottomNavigationBar: Container(
            color: ColorName.primary,
            padding: EdgeInsets.symmetric(
              horizontal: context.spacingMd,
              vertical: context.spacingXlg,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GlobalText.label(
                        value: 'Total',
                        color: Colors.white,
                      ),
                      GlobalText.title(
                        value: state.amount ?? '',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: GlobalButton.filled(
                    onTap: () {},
                    fullWidth: false,
                    backgroundColor: ColorName.green,
                    child: const GlobalText.label(
                      value: 'Selanjutnya',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(context.spacingMd),
            child: BlocBuilder<PayoutBloc, PayoutState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    spacing: context.spacingMd,
                    children: [
                      PaymentRecipientCardView(
                        account: state.selectedAccount!,
                      ),
                      const PaymentRecipientBankCardView()
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
