import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SherAcc Erp',
      home: LoginPage(),
    );
  }
}

