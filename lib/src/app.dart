import 'package:flutter/material.dart';
import 'core/app_router.dart';
import 'shared/extension/ext_theme.dart';

class PaperApp extends StatefulWidget {
  const PaperApp({super.key});

  @override
  State<PaperApp> createState() => _PaperAppState();
}

class _PaperAppState extends State<PaperApp> {
  late PaperAppRouter router;

  @override
  void initState() {
    super.initState();
    router = PaperAppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
