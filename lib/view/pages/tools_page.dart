import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/tools_settings_constants/tools_constants.dart';
import 'package:sher_acc_erp/view/pages/about_developer_page.dart';
import 'package:sher_acc_erp/view/pages/software_settings_page.dart';
import 'package:sher_acc_erp/view/pages/user_list_page.dart';
import 'package:sher_acc_erp/view/widgets/app_settings_widget.dart';

class ToolsPage extends StatelessWidget {
  static const routePath = '/toolsPage';
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = ToolsConstants();
    List settingsPages = [
      UserListPage.routePth,
      UserListPage.routePth,
      SoftWareSettingsPage.routePath,
      AboutDeveloperPage.routePath,
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return AppSettingsWidget(
                  txt: constants.settingsListTxt[index],
                  onPressed: () {
                    context.push(settingsPages[index]);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
