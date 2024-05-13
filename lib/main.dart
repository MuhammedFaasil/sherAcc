import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SherAcc Erp',
      routerConfig: router,
    );
  }
}
