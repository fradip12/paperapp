import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_button.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/models/enum_pay_method.dart';
import '../managers/payout_bloc.dart';

@RoutePage()
class PayoutPaymentMethodPage extends StatefulWidget {
  const PayoutPaymentMethodPage({super.key});

  @override
  State<PayoutPaymentMethodPage> createState() =>
      _PayoutPaymentMethodPageState();
}

class _PayoutPaymentMethodPageState extends State<PayoutPaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayoutBloc, PayoutState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const GlobalText.title(
              value: 'Pilih Metode Pembayaran',
              color: Colors.white,
            ),
            centerTitle: true,
            automaticallyImplyLeading: true,
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
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
                      ),
                      GlobalText.title(
                        value: state.amount ?? '',
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: GlobalButton.filled(
                    onTap: () {},
                    fullWidth: false,
                    backgroundColor: ColorName.primary,
                    child: const GlobalText.label(
                      value: 'Lanjutkan',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(context.spacingMd),
            child: Column(
              spacing: context.spacingMd,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorName.grayLight),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: context.spacingSm,
                    children: [
                      Row(
                        spacing: context.spacingSm,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            color: ColorName.primary,
                          ),
                          const GlobalText.title(
                            value: 'Mitra Pembayaran Digital',
                            color: ColorName.textSub,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      ...PaymentMethod.values
                          .where((e) => e.type == 'digital')
                          .map((method) {
                        return PaymentMethodItem(
                          method: method,
                          selectedMethod: state.selectedMethod,
                        );
                      }),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: ColorName.grayLight),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: context.spacingSm,
                    children: [
                      Row(
                        spacing: context.spacingSm,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            color: ColorName.primary,
                          ),
                          const GlobalText.title(
                            value: 'Transfer Bank/Virtual Account',
                            color: ColorName.textSub,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      ...PaymentMethod.values
                          .where((e) => e.type == 'bank')
                          .map((method) {
                        return PaymentMethodItem(
                          method: method,
                          selectedMethod: state.selectedMethod,
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethod method;
  final PaymentMethod? selectedMethod;

  const PaymentMethodItem({
    super.key,
    required this.method,
    this.selectedMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: context.spacingSm,
      children: [
        Expanded(flex: 1, child: method.icon.svg()),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalText.label(
                value: method.label,
                color: ColorName.textPrimary,
              ),
              GlobalText.caption(
                value: 'Biaya ${method.fee}%',
                color: ColorName.textSub,
              ),
            ],
          ),
        ),
        Radio<PaymentMethod?>(
          value: method,
          groupValue: selectedMethod,
          onChanged: (PaymentMethod? value) {
            context
                .read<PayoutBloc>()
                .add(PayoutEvent.setPaymentMethod(value!));
          },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}
