import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/enums/notification_type.dart';
import '../../../data/models/account.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/utils/u_formatter.dart';
import '../managers/payout_bloc.dart';
import 'card_payout_account.dart';

class PaymentRecipientCardView extends StatefulWidget {
  final Accounts account;
  const PaymentRecipientCardView({super.key, required this.account});

  @override
  State<PaymentRecipientCardView> createState() =>
      _PaymentRecipientCardViewState();
}

class _PaymentRecipientCardViewState extends State<PaymentRecipientCardView> {
  bool isExpanded = true;
  String amount = '';

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
                    value: 'Informasi Penerima',
                    color: ColorName.textSub,
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
                PayoutAccountCard(
                  account: widget.account,
                  useBorder: false,
                ),
                const GlobalText.label(
                  value: 'Pilih Metode Notifikasi',
                  color: ColorName.textSub,
                ),
                Row(
                  children: [
                    Radio<NotificationType>(
                      value: NotificationType.whatsapp,
                      groupValue: state.notificationType,
                      onChanged: (NotificationType? value) {
                        context
                            .read<PayoutBloc>()
                            .add(PayoutEvent.setNotificationType(value!));
                      },
                      activeColor: Colors.blue,
                    ),
                    const GlobalText.label(value: 'WhatsApp'),
                    const SizedBox(width: 24),
                    Radio<NotificationType>(
                      value: NotificationType.sms,
                      groupValue: state.notificationType,
                      onChanged: (NotificationType? value) {
                        context
                            .read<PayoutBloc>()
                            .add(PayoutEvent.setNotificationType(value!));
                      },
                      activeColor: Colors.blue,
                    ),
                    const GlobalText.label(value: 'SMS'),
                  ],
                ),
                const GlobalText.label(
                  value:
                      'Mitra akan menerima notifikasi pembayaran melalui WhatsApp.',
                  color: ColorName.textSub,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Jumlah Pembayaran',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' *',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red.shade400,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                GlobalTextField(
                  hintText: 'Rp. 1.000.000',
                  keyboardType: TextInputType.number,
                  value: state.amount,
                  onChanged: (value) {
                    context
                        .read<PayoutBloc>()
                        .add(PayoutEvent.setAmount(value ?? ''));
                  },
                  inputFormatters: [
                    CurrencyInputFormatter(),
                  ],
                ),
                const GlobalText.label(value: 'Berita Acara'),
                const GlobalTextField(
                  hintText: 'Berita Acara',
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
