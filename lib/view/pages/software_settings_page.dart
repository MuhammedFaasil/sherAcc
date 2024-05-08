import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/core/constants/software_settings_settings/software_settings_constants.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/items_grid_widget.dart';

class SoftWareSettingsPage extends StatelessWidget {
  static const routePath = '/softwareSettingsPage';
  const SoftWareSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = SoftwareSettingsConstants();
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: constants.headTxt,
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 150,
                  crossAxisSpacing: 10),
              itemCount: 6,
              itemBuilder: (context, index) {
                return ItemsGridWidget(
                    onTap: () {},
                    iconsUrl: constants.softwareSettingsIcList[index],
                    nameTxt: constants.softwareSettingsTxtList[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
