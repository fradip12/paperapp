import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/app_di.dart';
import 'core/app_router.dart';
import 'features/payout/managers/payout_bloc.dart';
import 'shared/extension/ext_theme.dart';

class PaperApp extends StatefulWidget {
  const PaperApp({super.key});

  @override
  State<PaperApp> createState() => _PaperAppState();
}

class _PaperAppState extends State<PaperApp> {
  late PaperAppRouter router;
  late PayoutBloc payoutBloc;

  @override
  void initState() {
    super.initState();
    router = PaperAppRouter();
    payoutBloc = locator<PayoutBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => payoutBloc,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router.config(),
        theme: context.themeData,
        builder: (BuildContext context, Widget? child) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            behavior: HitTestBehavior.opaque,
            child: child,
          );
        },
      ),
    );
  }
}
