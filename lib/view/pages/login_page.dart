import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/loginpage_constants/login_page_constants.dart';
import 'package:sher_acc_erp/view/pages/home_page.dart';
import 'package:sher_acc_erp/view/widgets/textfield_widget.dart';

class LoginPage extends StatelessWidget {
  static const routePath = '/loginPage';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordControlle = TextEditingController();
    final constants = LoginConstants();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(constants.bagroundImgUrl))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(constants.logoImgUrl),
              Image.asset(constants.logoTxtImgUrl),
              Text(
                constants.logoTxt,
                style: const TextStyle(
                    color: Color(0xff0008B3),
                    fontFamily: 'times roman',
                    // fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 80,
              ),
              TextfieldWidget(
                icons: constants.userNameIcon,
                txt: constants.userNameTxt,
                controler: userNameController,
              ),
              const SizedBox(
                height: 40,
              ),
              TextfieldWidget(
                icons: constants.passwordIcon,
                txt: constants.passwordTxt,
                iconsSufix: Image.asset(constants.eyeIcon),
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
                          context.go(HomePage.routePath);
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => const AlertDialog(
                              content: Text('enter user name and password'),
                            ),
                          );
                        }
                      },
                      child: Text(
                        constants.loginTxt,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'poppins'),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    constants.createACTxt,
                    style: const TextStyle(
                        color: Color(0xff0008B3), fontFamily: 'poppins'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
