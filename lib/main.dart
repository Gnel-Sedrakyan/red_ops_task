import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:red_ops_task/injection.dart';
import 'package:red_ops_task/presentation/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod); // test|prod
  runApp(const AppWidget());
}
