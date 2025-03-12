import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/core/app_di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const PaperApp());
}
