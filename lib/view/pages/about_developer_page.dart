import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';

class AboutDeveloperPage extends StatelessWidget {
  static const routePath = '/aboutdeveloperPage';
  const AboutDeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'About Developer',
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo_image_2.png'),
            ),
            // SizedBox(
            //   width: MediaQuery.sizeOf(context).width,
            //   child: const Text(
            //     textScaler: TextScaler.linear(3.3),
            //     'SherSoft',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(
            //       fontFamily: 'times roman',
            //       color: Color(0xff0008B3),
            //       fontWeight: FontWeight.bold,
            //       // fontSize: 40,
            //     ),
            //   ),
            // ),
            // const Text(
            //   'Software Company',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontFamily: 'times roman',
            //     color: Color(0xff000B83),
            //   ),
            // ),
            RichText(
              text: const TextSpan(
                text: 'SherSoft \n',
                style: TextStyle(
                  fontFamily: 'times roman',
                  color: Color(0xff0008B3),
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                ),
                children: [
                  TextSpan(
                    text: '   Software Company',
                    style: TextStyle(
                        fontFamily: 'times roman',
                        fontWeight: FontWeight.normal,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff0008B3)),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'J.N.Road, Perinthalmanna',
                  style: TextStyle(
                      fontFamily: 'times roman',
                      color: Color(0xff0008B3),
                      fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Center(
                child: Text(
                  'SherAcc ERP',
                  style: TextStyle(
                      fontFamily: 'times roman',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0008B3),
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
