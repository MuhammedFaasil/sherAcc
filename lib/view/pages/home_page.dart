import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sher_acc_erp/core/constants/home_page_constatnts/home_page_constants.dart';
import 'package:sher_acc_erp/view/controller/bloc/financial_year_bloc/financial_year_bloc.dart';
import 'package:sher_acc_erp/view/pages/accounts_page.dart';
import 'package:sher_acc_erp/view/pages/accounts_report_page.dart';
import 'package:sher_acc_erp/view/pages/dash_page.dart';
import 'package:sher_acc_erp/view/pages/inventory_page.dart';
import 'package:sher_acc_erp/view/pages/inventory_report_page.dart';
import 'package:sher_acc_erp/view/pages/record_list_page.dart';
import 'package:sher_acc_erp/view/pages/report_page.dart';
import 'package:sher_acc_erp/view/pages/settings_page.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';
import 'package:sher_acc_erp/view/pages/tools_page.dart';

class HomePage extends HookWidget {
  static const routePath = '/homePage';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = HomePageConstants();
    final pageController = usePageController(initialPage: 0);
    final currentPageIndex = useState(0);

    void updateSelectedPage(int newIndex) {
      pageController.animateToPage(newIndex,
          duration: const Duration(milliseconds: 5), curve: Curves.easeInOut);
      currentPageIndex.value = newIndex;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Container(
          color: const Color(0xff0008B3),
          child: Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: constants.appbarImages.length,
                    itemBuilder: (context, index) {
                      final isSelected = currentPageIndex.value == index;
                      final imageColor =
                          isSelected ? Colors.white : Colors.grey[200];
                      final textColor = isSelected ? Colors.white : Colors.grey;
                      return GestureDetector(
                        onTap: () => updateSelectedPage(index),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Image.asset(constants.appbarImages[index],
                                    color: imageColor),
                                const SizedBox(height: 3),
                                Text(
                                  constants.imagetxt[index],
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
          onPageChanged: (newIndex) =>
              currentPageIndex.value = newIndex.toInt(),
          controller: pageController,
          children: [
            BlocProvider<DateRangeBloc>(
              create: (context) => DateRangeBloc(),
              child: const TodayReportPage(),
            ),
            const DashPage(),
            const InventoryPage(),
            const AccountsPage(),
            const AccountsReportPage(),
            const InventoryReportPage(),
            const ReportPage(),
            const RecordListPage(),
            const SettingsPage(),
            const ToolsPage(),
          ]),
    );
  }
}
