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

@RoutePage()
class PayoutPaymentSendPage extends StatelessWidget {
  const PayoutPaymentSendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalText.title(
          value: 'Kirim Pembayaran',
          color: Colors.white,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(context.spacingMd),
        child: BlocBuilder<PayoutBloc, PayoutState>(
          builder: (context, state) {
            return Column(
              spacing: context.spacingMd,
              children: [
                Container(
                  padding: EdgeInsets.all(context.spacingMd),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(context.spacingMd),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(25),
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: context.spacingXs,
                    children: [
                      const GlobalText.title(value: 'Lakukan Pembayaran ke'),
                      Row(
                        spacing: context.spacingSm,
                        children: [
                          state.selectedMethod?.icon.svg() ?? const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GlobalText.title(
                                value: (state.selectedMethod?.label).orDefault,
                              ),
                              GlobalText.caption(
                                value:
                                    'PT. ${(state.selectedMethod?.label).orDefault}',
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(context.spacingSm),
                        padding: EdgeInsets.all(context.spacingSm),
                        decoration: BoxDecoration(
                          color: ColorName.background,
                          borderRadius:
                              BorderRadius.circular(context.spacingXxs),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GlobalText.title(
                                value: (state.selectedBank?.accountNumber)
                                    .orDefault),
                            const GlobalText.label(
                              value: 'SALIN',
                              color: ColorName.primary,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      const GlobalText.label(value: 'Total Pembayaran'),
                      Container(
                        margin: EdgeInsets.all(context.spacingSm),
                        padding: EdgeInsets.all(context.spacingSm),
                        decoration: BoxDecoration(
                          color: ColorName.background,
                          borderRadius:
                              BorderRadius.circular(context.spacingXxs),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GlobalText.title(
                              value: 'Rp. 1.000',
                            ),
                            GlobalText.label(
                              value: 'SALIN',
                              color: ColorName.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(context.spacingMd),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(context.spacingMd),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(25),
                        blurRadius: 5,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlobalText.caption(value: 'Total Nominal'),
                          GlobalText.label(value: 'Rp. 1.000'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlobalText.caption(value: 'Biaya Tambahan'),
                          GlobalText.label(value: 'Rp. 1.000'),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GlobalText.caption(value: 'Jumlah Tagihan'),
                          GlobalText.title(
                            value: 'Rp. 1.000',
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GlobalButton.filled(
                  onTap: () => context.navigateTo(const PayoutReceiptRoute()),
                  child: const GlobalText.label(
                    value: 'Saya Sudah Bayar',
                    color: Colors.white,
                  ),
                ),
                context.spacingMd.vSpace,
              ],
            );
          },
        ),
      ),
    );
  }
}
