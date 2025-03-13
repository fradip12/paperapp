import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/app_router.gr.dart';
import '../../../shared/assets/assets.gen.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_button.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_misc.dart';
import '../managers/payout_bloc.dart';

@RoutePage()
class PayoutReceiptPage extends StatelessWidget {
  const PayoutReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GlobalText.title(
          value: 'Rincian Pembayaran',
          color: Colors.white,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.all(context.spacingMd),
        color: Colors.white,
        child: GlobalButton.filled(
          onTap: () =>
              context.router.replaceAll([const PayoutPartnerSelectionRoute()]),
          child: const GlobalText.label(
            value: 'Buat Pembayaran Baru',
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<PayoutBloc, PayoutState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.all(context.spacingMd),
            child: Column(
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
                    spacing: context.spacingSm,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.center,
                        child: GlobalText.title(value: 'Pembayaran Berhasil'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(context.spacingXxs),
                            decoration: BoxDecoration(
                              color: ColorName.green,
                              borderRadius:
                                  BorderRadius.circular(context.spacingMd),
                            ),
                            child: const GlobalText.caption(
                              value: 'Dana Diteruskan',
                              color: Colors.white,
                            ),
                          ),
                          const GlobalText.label(
                            value: 'Lihat Detail Status',
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      const Divider(),
                      const GlobalText.label(
                        value: 'Pembayaran Via',
                        fontWeight: FontWeight.bold,
                      ),
                      Row(
                        spacing: context.spacingSm,
                        children: [
                          state.selectedMethod!.icon.svg(width: 50),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: context.spacingSm,
                    children: [
                      const GlobalText.title(value: 'Rincian Pembayaran'),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child:
                                  GlobalText.caption(value: 'Total Supplier')),
                          GlobalText.label(value: '3'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child:
                                GlobalText.caption(value: 'Metode Pembayaran'),
                          ),
                          GlobalText.label(value: state.selectedMethod!.label),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                              child: GlobalText.caption(
                                  value: 'Tanggal Pembayaran')),
                          GlobalText.label(
                            value: DateFormat.yMEd().format(DateTime.now()),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: GlobalText.label(value: 'Total Pembayaran'),
                          ),
                          GlobalText.title(
                            value: state.amount.orDefault,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Container(
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
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            spacing: context.spacingSm,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.icDownload.svg(
                                colorFilter: const ColorFilter.mode(
                                  ColorName.primary,
                                  BlendMode.srcIn,
                                ),
                              ),
                              const GlobalText.label(
                                value: 'Unduh',
                                color: ColorName.primary,
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(),
                        Expanded(
                          child: Row(
                            spacing: context.spacingSm,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Assets.icons.icShare.svg(
                                colorFilter: const ColorFilter.mode(
                                  ColorName.primary,
                                  BlendMode.srcIn,
                                ),
                              ),
                              const GlobalText.label(
                                value: 'Bagikan',
                                color: ColorName.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: context.spacingMd,
                  children: [
                    Assets.icons.isoWhite.svg(),
                    Assets.icons.pciDssWatermark.image(scale: 2),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
