import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_router.gr.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_button.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';
import '../managers/payout_bloc.dart';
import 'card_payout_information_bank.dart';

class PaymentRecipientBankCardView extends StatefulWidget {
  const PaymentRecipientBankCardView({super.key});

  @override
  State<PaymentRecipientBankCardView> createState() =>
      _PaymentRecipientBankCardViewState();
}

class _PaymentRecipientBankCardViewState
    extends State<PaymentRecipientBankCardView> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: ColorName.grayLight),
      ),
      child: BlocBuilder<PayoutBloc, PayoutState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: context.spacingSm,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GlobalText.title(
                    value: 'Informasi Bank Penerima',
                    color: ColorName.textSub,
                    fontWeight: FontWeight.bold,
                  ),
                  IconButton(
                    icon: Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                  ),
                ],
              ),
              if (isExpanded) ...[
                if (state.selectedBank != null)
                  GestureDetector(
                    onTap: () => context.pushRoute(const PayoutAddBankRoute()),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(context.spacingSm),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorName.grayLight),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GlobalText.title(
                            value: (state.selectedBank?.nama).orDefault,
                            fontWeight: FontWeight.bold,
                          ),
                          GlobalText.label(
                            value:
                                (state.selectedBank?.accountNumber).orDefault,
                          ),
                          GlobalText.label(
                            value:
                                'a.n ${state.selectedBank?.accountName.orDefault}',
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  const InformationCard(
                    message:
                        'Silahkan tambahkan rekening untuk melanjutkan bayar invoice.',
                  ),
                if (state.selectedBank == null)
                  GlobalButton.outlined(
                    onTap: () async {
                      await context.pushRoute(const PayoutAddBankRoute());
                    },
                    foregroundColor: ColorName.primary,
                    child: Row(
                      spacing: context.spacingMd,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add_circle_outline,
                          color: ColorName.primary,
                        ),
                        const GlobalText.title(
                          value: 'Tambah Rekening',
                          color: ColorName.primary,
                        ),
                      ],
                    ),
                  )
              ],
            ],
          );
        },
      ),
    );
  }
}
