// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:paper_test/src/domain/entity/ets_bank.dart' as _i8;
import 'package:paper_test/src/features/payout/pages/payout_add_bank.dart'
    as _i1;
import 'package:paper_test/src/features/payout/pages/payout_partner_selection.dart'
    as _i2;
import 'package:paper_test/src/features/payout/pages/payout_payment_confirmation.dart'
    as _i3;
import 'package:paper_test/src/features/payout/pages/payout_payment_method.dart'
    as _i4;
import 'package:paper_test/src/features/payout/widgets/view_banks_list.dart'
    as _i5;

/// generated route for
/// [_i1.PayoutAddBankPage]
class PayoutAddBankRoute extends _i6.PageRouteInfo<void> {
  const PayoutAddBankRoute({List<_i6.PageRouteInfo>? children})
    : super(PayoutAddBankRoute.name, initialChildren: children);

  static const String name = 'PayoutAddBankRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.PayoutAddBankPage();
    },
  );
}

/// generated route for
/// [_i2.PayoutPartnerSelectionPage]
class PayoutPartnerSelectionRoute extends _i6.PageRouteInfo<void> {
  const PayoutPartnerSelectionRoute({List<_i6.PageRouteInfo>? children})
    : super(PayoutPartnerSelectionRoute.name, initialChildren: children);

  static const String name = 'PayoutPartnerSelectionRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.PayoutPartnerSelectionPage();
    },
  );
}

/// generated route for
/// [_i3.PayoutPaymentConfirmationPage]
class PayoutPaymentConfirmationRoute extends _i6.PageRouteInfo<void> {
  const PayoutPaymentConfirmationRoute({List<_i6.PageRouteInfo>? children})
    : super(PayoutPaymentConfirmationRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentConfirmationRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.PayoutPaymentConfirmationPage();
    },
  );
}

/// generated route for
/// [_i4.PayoutPaymentMethodPage]
class PayoutPaymentMethodRoute extends _i6.PageRouteInfo<void> {
  const PayoutPaymentMethodRoute({List<_i6.PageRouteInfo>? children})
    : super(PayoutPaymentMethodRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentMethodRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.PayoutPaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i5.ViewBanksListPage]
class ViewBanksListRoute extends _i6.PageRouteInfo<ViewBanksListRouteArgs> {
  ViewBanksListRoute({
    _i7.Key? key,
    required List<_i8.BankEts> banks,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         ViewBanksListRoute.name,
         args: ViewBanksListRouteArgs(key: key, banks: banks),
         initialChildren: children,
       );

  static const String name = 'ViewBanksListRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewBanksListRouteArgs>();
      return _i5.ViewBanksListPage(key: args.key, banks: args.banks);
    },
  );
}

class ViewBanksListRouteArgs {
  const ViewBanksListRouteArgs({this.key, required this.banks});

  final _i7.Key? key;

  final List<_i8.BankEts> banks;

  @override
  String toString() {
    return 'ViewBanksListRouteArgs{key: $key, banks: $banks}';
  }
}
