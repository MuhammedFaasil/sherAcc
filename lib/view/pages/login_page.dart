import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';
import 'package:sher_acc_erp/view/widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordControlle = TextEditingController();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/baground_login.png'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_shersoft.png'),
              Image.asset('assets/images/name_shersoft.png'),
              const Text(
                'A Complete Acounting & Inventory Package',
                style: TextStyle(color: Color(0xff0008B3)),
              ),
              const SizedBox(
                height: 80,
              ),
              TextfieldWidget(
                icons: 'assets/icons/profile_icon.png',
                txt: 'Username',
                controler: userNameController,
              ),
              const SizedBox(
                height: 40,
              ),
              TextfieldWidget(
                icons: 'assets/icons/lock_icon.png',
                txt: 'Password',
                iconsSufix: Image.asset('assets/icons/Red eye_icon.png'),
                controler: passwordControlle,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color(0xff0008B3)),
                      onPressed: () {
                        if (userNameController.text.isNotEmpty &&
                            passwordControlle.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TodayReportPage(),
                              ));
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'poppins'),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Create an Account?',
                    style: TextStyle(
                        color: Color(0xff0008B3), fontFamily: 'poppins'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
