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
        )
      ];
}
