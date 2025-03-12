import 'package:flutter/material.dart';

import '../../../data/enums/notification_type.dart';
import '../../../data/models/account.dart';
import '../../../shared/assets/colors.gen.dart';
import '../../../shared/components/display/global_text.dart';
import '../../../shared/components/interactive/global_textfield.dart';
import '../../../shared/extension/ext_dimens.dart';
import '../../../shared/extension/ext_theme.dart';
import '../../../shared/utils/u_formatter.dart';
import 'card_payout_account.dart';

class PaymentRecipientCard extends StatefulWidget {
  final Accounts account;
  const PaymentRecipientCard({super.key, required this.account});

  @override
  State<PaymentRecipientCard> createState() => _PaymentRecipientCardState();
}

class _PaymentRecipientCardState extends State<PaymentRecipientCard> {
  bool isExpanded = true;
  NotificationType selectedNotification = NotificationType.whatsapp;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const GlobalText.title(
                value: 'Informasi Penerima',
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
                  groupValue: selectedNotification,
                  onChanged: (NotificationType? value) {
                    setState(() {
                      selectedNotification = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
                const GlobalText.label(value: 'WhatsApp'),
                const SizedBox(width: 24),
                Radio<NotificationType>(
                  value: NotificationType.sms,
                  groupValue: selectedNotification,
                  onChanged: (NotificationType? value) {
                    setState(() {
                      selectedNotification = value!;
                    });
                  },
                  activeColor: Colors.blue,
                ),
                const GlobalText.label(value: 'SMS'),
              ],
            ),
            const GlobalText.caption(
              value:
                  'Mitra akan menerima notifikasi pembayaran melalui WhatsApp.',
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Jumlah Pembayaran',
                    style: context.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: ' *',
                    style: context.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            GlobalTextField(
              hintText: 'Rp. 1.000.000',
              keyboardType: TextInputType.number,
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
      ),
    );
  }
}
