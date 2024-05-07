import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sher_acc_erp/view/controller/bloc/financial_year_bloc/financial_year_bloc.dart';
import 'package:sher_acc_erp/view/pages/dash_page.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';

class HomePage extends HookWidget {
  static const routePath = '/homePage';
  final List<String> appbarImages = [
    'assets/icons/Calendar_icon.png',
    'assets/icons/Dashboard_icon.png',
    'assets/icons/Inventory_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/account_report_icon.png',
    'assets/icons/Inventory_report_icon.png',
    'assets/icons/Report_icon.png',
    'assets/icons/record_icon.png',
    'assets/icons/Settings_icon.png',
    'assets/icons/tools_icon.png',
  ];

  final List<String> imagetxt = [
    'Today',
    'Dashboard',
    'Inventory',
    'Accounts',
    'Account Report',
    'Inventory',
    'Report',
    'Record',
    'Settings',
    'Tools',
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    itemCount: appbarImages.length,
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
                                Image.asset(appbarImages[index],
                                    color: imageColor),
                                const SizedBox(height: 3),
                                Text(
                                  imagetxt[index],
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
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.green,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.blue,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.purple,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.amber,
            ),
          ]),
    );
  }
}
