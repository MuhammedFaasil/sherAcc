import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/constants/tools_settings_constants/tools_constants.dart';
import 'package:sher_acc_erp/view/widgets/app_settings_widget.dart';

class ToolsPage extends StatelessWidget {
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = ToolsConstants();
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
                  onPressed: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
