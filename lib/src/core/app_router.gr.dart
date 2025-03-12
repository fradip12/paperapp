// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:paper_test/src/features/payout/pages/payout_partner_selection.dart'
    as _i1;
import 'package:paper_test/src/features/payout/pages/payout_payment_confirmation.dart'
    as _i2;

/// generated route for
/// [_i1.PayoutPartnerSelectionPage]
class PayoutPartnerSelectionRoute extends _i3.PageRouteInfo<void> {
  const PayoutPartnerSelectionRoute({List<_i3.PageRouteInfo>? children})
    : super(PayoutPartnerSelectionRoute.name, initialChildren: children);

  static const String name = 'PayoutPartnerSelectionRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.PayoutPartnerSelectionPage();
    },
  );
}

/// generated route for
/// [_i2.PayoutPaymentConfirmationPage]
class PayoutPaymentConfirmationRoute extends _i3.PageRouteInfo<void> {
  const PayoutPaymentConfirmationRoute({List<_i3.PageRouteInfo>? children})
    : super(PayoutPaymentConfirmationRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentConfirmationRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.PayoutPaymentConfirmationPage();
    },
  );
}
