import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/app_settings_constants/app_settings_constants.dart';
import 'package:sher_acc_erp/view/pages/company_settings_page.dart';
import 'package:sher_acc_erp/view/pages/general_settings_page.dart';
import 'package:sher_acc_erp/view/widgets/app_settings_widget.dart';
import 'package:sher_acc_erp/view/widgets/button_widget.dart';
import 'package:sher_acc_erp/view/widgets/switch_button_widget.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageList = [
      GeneralSettingsPage.routePath,
      CompanySettingsPage.routePath,
      CompanySettingsPage.routePath,
      CompanySettingsPage.routePath,
      CompanySettingsPage.routePath,
    ];
    var onChanged = useState<bool>(false);
    final constants = AppSettingsConstants();
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Text(
                constants.headTxt,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AppSettingsWidget(
                  txt: constants.appSettingsListTxt[index],
                  onPressed: () {
                    context.push(pageList[index]);
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    constants.peviewTxt,
                    style: const TextStyle(
                        fontFamily: 'poppins',
                        color: Color(0xff0008B4),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.sizeOf(context).width,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Row(
                children: [
                  Container(
                    height: 27,
                    width: 27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff0008B3),
                    ),
                    child: Image.asset(constants.iconUrl),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    constants.userTxt,
                    style: const TextStyle(
                        fontFamily: 'poppins', fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  SwitchWidget(
                      onChanged: (newValue) {
                        onChanged.value = newValue;
                      },
                      value: onChanged.value)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    color: Colors.black,
                    txt: constants.resetTxt,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonWidget(
                    color: Colors.black,
                    txt: constants.addLogoTxt,
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
