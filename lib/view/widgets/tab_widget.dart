import 'package:flutter/material.dart';
import 'package:sher_acc_erp/view/pages/general_option_tab_page.dart';

class TabsWidgets extends StatelessWidget {
  const TabsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
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
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                OptionsTabPage(),
                OptionsTabPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
