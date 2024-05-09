import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/about_developer_constants/about_developer_constants.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/inffo_container_widget.dart';

class AboutDeveloperPage extends StatelessWidget {
  static const routePath = '/aboutdeveloperPage';
  const AboutDeveloperPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = AboutDeveloperConstants();

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
              child: Image.asset(constants.logoUrl),
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
                    color: const Color(0xff0008B3),
                  ),
                  child: Image.asset(constants.locationUrl),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  constants.roadTxt,
                  style: const TextStyle(
                      fontFamily: 'times roman',
                      color: Color(0xff0008B3),
                      fontSize: 17),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Center(
                child: Text(
                  constants.erpTxt,
                  style: const TextStyle(
                      fontFamily: 'times roman',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff0008B3),
                      fontSize: 30),
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            InfoWidget(txt: constants.numberTxt, icons: constants.numberIcon),
            const SizedBox(
              height: 10,
            ),
            InfoWidget(txt: constants.webTxt, icons: constants.webIcon),
            const SizedBox(
              height: 10,
            ),
            InfoWidget(txt: constants.mailTxt, icons: constants.mailIcon),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff0008B3),
                        ),
                        child: Image.asset(constants.gadgetIcons[i]),
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  mainAxisExtent: 40),
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Text(
                    constants.gridListTxts[index],
                    style: const TextStyle(
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0008B3)),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
