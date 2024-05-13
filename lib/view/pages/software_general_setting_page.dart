import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/pages/general_option_tab_page.dart';
import 'package:sher_acc_erp/view/pages/general_value_tab_page.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';

class SoftwareGeneralPage extends StatelessWidget {
  static const routePath = '/softwareGeneral';

  const SoftwareGeneralPage({Key? key});

  @override
  Widget build(BuildContext context) {
    const tabBarHeight = kToolbarHeight + kTextTabBarHeight;

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'General',
          onPressed: () => Navigator.of(context).pop(),
          iconFirst: Image.asset('assets/icons/Filter_icon.png'),
          onTapFirst: () {},
          iconSecondPath: 'assets/icons/Save_icon.png',
          onTapSecond: () {},
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: const Color(0xff1B22BA),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.white,
                    dividerHeight: 0,
                    labelColor: Colors.white,
                    indicator: const BoxDecoration(color: Color(0xff0008B3)),
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/options_icon.png'),
                            const SizedBox(width: 10),
                            const Text('Option'),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/value_icon.png'),
                            const SizedBox(width: 10),
                            const Text('Value'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - tabBarHeight,
                  child: const TabBarView(
                    children: [
                      OptionsTabPage(),
                      GeneralValuePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
