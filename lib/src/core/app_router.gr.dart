// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:paper_test/src/domain/entity/ets_bank.dart' as _i9;
import 'package:paper_test/src/features/payout/pages/payout_add_bank.dart'
    as _i1;
import 'package:paper_test/src/features/payout/pages/payout_partner_selection.dart'
    as _i2;
import 'package:paper_test/src/features/payout/pages/payout_payment_confirmation.dart'
    as _i3;
import 'package:paper_test/src/features/payout/pages/payout_payment_method.dart'
    as _i4;
import 'package:paper_test/src/features/payout/pages/payout_payment_send.dart'
    as _i5;
import 'package:paper_test/src/features/payout/widgets/view_banks_list.dart'
    as _i6;

/// generated route for
/// [_i1.PayoutAddBankPage]
class PayoutAddBankRoute extends _i7.PageRouteInfo<void> {
  const PayoutAddBankRoute({List<_i7.PageRouteInfo>? children})
    : super(PayoutAddBankRoute.name, initialChildren: children);

  static const String name = 'PayoutAddBankRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.PayoutAddBankPage();
    },
  );
}

/// generated route for
/// [_i2.PayoutPartnerSelectionPage]
class PayoutPartnerSelectionRoute extends _i7.PageRouteInfo<void> {
  const PayoutPartnerSelectionRoute({List<_i7.PageRouteInfo>? children})
    : super(PayoutPartnerSelectionRoute.name, initialChildren: children);

  static const String name = 'PayoutPartnerSelectionRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.PayoutPartnerSelectionPage();
    },
  );
}

/// generated route for
/// [_i3.PayoutPaymentConfirmationPage]
class PayoutPaymentConfirmationRoute extends _i7.PageRouteInfo<void> {
  const PayoutPaymentConfirmationRoute({List<_i7.PageRouteInfo>? children})
    : super(PayoutPaymentConfirmationRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentConfirmationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.PayoutPaymentConfirmationPage();
    },
  );
}

/// generated route for
/// [_i4.PayoutPaymentMethodPage]
class PayoutPaymentMethodRoute extends _i7.PageRouteInfo<void> {
  const PayoutPaymentMethodRoute({List<_i7.PageRouteInfo>? children})
    : super(PayoutPaymentMethodRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentMethodRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.PayoutPaymentMethodPage();
    },
  );
}

/// generated route for
/// [_i5.PayoutPaymentSendPage]
class PayoutPaymentSendRoute extends _i7.PageRouteInfo<void> {
  const PayoutPaymentSendRoute({List<_i7.PageRouteInfo>? children})
    : super(PayoutPaymentSendRoute.name, initialChildren: children);

  static const String name = 'PayoutPaymentSendRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.PayoutPaymentSendPage();
    },
  );
}

/// generated route for
/// [_i6.ViewBanksListPage]
class ViewBanksListRoute extends _i7.PageRouteInfo<ViewBanksListRouteArgs> {
  ViewBanksListRoute({
    _i8.Key? key,
    required List<_i9.BankEts> banks,
    List<_i7.PageRouteInfo>? children,
  }) : super(
         ViewBanksListRoute.name,
         args: ViewBanksListRouteArgs(key: key, banks: banks),
         initialChildren: children,
       );

  static const String name = 'ViewBanksListRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ViewBanksListRouteArgs>();
      return _i6.ViewBanksListPage(key: args.key, banks: args.banks);
    },
  );
}

class ViewBanksListRouteArgs {
  const ViewBanksListRouteArgs({this.key, required this.banks});

  final _i8.Key? key;

  final List<_i9.BankEts> banks;

  @override
  String toString() {
    return 'ViewBanksListRouteArgs{key: $key, banks: $banks}';
  }
}
