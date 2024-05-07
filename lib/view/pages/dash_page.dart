import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';

class DashPage extends StatelessWidget {
  const DashPage({super.key});

  @override
  Widget build(BuildContext context) {
    List dashTxt = [
      'Statement',
      'Expenses',
      'Cash&\n  Bank',
      'Recievable&\n     Payble'
    ];

    List dashImages = [
      'assets/icons/statement_icon.png',
      'assets/icons/expenses_icon.png',
      'assets/icons/Cash_bank_icon.png',
      'assets/icons/payable_icon.png'
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  mainAxisExtent: 150),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ));
                  },
                  child: Container(
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 77,
                          height: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff0008B3)),
                          child: Image.asset(dashImages[index]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          dashTxt[index],
                          style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
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
