import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class PaperAppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        durationInMilliseconds: 200,
      );

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/partner',
          initial: true,
          page: PayoutPartnerSelectionRoute.page,
          children: [],
        ),
        AutoRoute(
          path: '/payment-confirmation',
          page: PayoutPaymentConfirmationRoute.page,
        ),
        AutoRoute(
          path: '/add-bank',
          page: PayoutAddBankRoute.page,
        ),
        AutoRoute(
          path: '/view-banks-list',
          page: ViewBanksListRoute.page,
        ),
        AutoRoute(
          path: '/payment-method',
          page: PayoutPaymentMethodRoute.page,
        ),
        AutoRoute(
          path: '/payment-send',
          page: PayoutPaymentSendRoute.page,
        ),
        AutoRoute(
          path: '/receipt',
          page: PayoutReceiptRoute.page,
        ),
      ];
}
