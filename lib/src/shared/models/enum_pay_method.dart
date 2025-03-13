import '../assets/assets.gen.dart';

enum PaymentMethod {
  ccTokopedia(type: 'digital', fee: 1.55, label: 'CC & Non CC via Tokopedia'),
  bBRI(type: 'bank', fee: 0, label: 'Bank BRI'),
  bMandiri(type: 'bank', fee: 0, label: 'Bank Mandiri'),
  bBNI(type: 'bank', fee: 0, label: 'Bank BNI'),
  bBCA(type: 'bank', fee: 0, label: 'Bank BCA'),
  bPermata(type: 'bank', fee: 0, label: 'Bank Permata');

  final String type;
  final double fee;
  final String label;

  const PaymentMethod({
    required this.type,
    required this.fee,
    required this.label,
  });

  SvgGenImage get icon => switch (this) {
        ccTokopedia => Assets.icons.tokopedia,
        bBRI => Assets.icons.bankBri,
        bMandiri => Assets.icons.bankMandiri,
        bBNI => Assets.icons.bankBni,
        bBCA => Assets.icons.bankBca,
        bPermata => Assets.icons.bankPermata,
      };
}
