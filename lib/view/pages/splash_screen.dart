import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';

class SplashScreen extends StatelessWidget {
  static const routePath = '/splashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    final scaffoldKey = GlobalKey<ScaffoldState>();

    Future.delayed(const Duration(seconds: 4), () {
      context.pushReplacement(LoginPage.routePath);
    });

    return Scaffold(
      key: scaffoldKey,
      body: Builder(builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/spalsh_baground_2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_shersoft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 55,
                width: 190,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/name_shersoft.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
