import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/spalsh_baground_2.png',
                ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo_shersoft.png'),
                      fit: BoxFit.fill)),
            ),
            Container(
              height: 55,
              width: 190,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/name_shersoft.png'),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: const Color(0xff0008B3),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: AssetImage('assets/icons/profile_outlined_icon.png'),
                )),
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Company Profile',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          )
        ],
      ),
      //         Stack(
      //   children: [
      //     Positioned(
      //         top: 100,
      //         right: -60,
      //         child: Image.asset('assets/images/splash screen baground.png')),
      //     Positioned(
      //         child: Column(
      //       children: [],
      //     ))
      //   ],
      // )
    );
  }
}
