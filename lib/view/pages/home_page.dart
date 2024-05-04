import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';

class HomePage extends HookWidget {
  final List<String> appbarImages = [
    'assets/icons/Calendar_icon.png',
    'assets/icons/Dashboard_icon.png',
    'assets/icons/Inventory_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
    'assets/icons/accounts_icon.png',
  ];

  final List<String> imagetxt = [
    'Today',
    'Dashboard',
    'Inventory',
    'Accounts',
    'Accounts',
    'Accounts',
    'Accounts',
    'Accounts',
    'Accounts',
    'Accounts',
  ];

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(initialPage: 0);
    final currentPageIndex = useState(0);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
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
                      return GestureDetector(
                        onTap: () {
                          pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                          currentPageIndex.value = index;
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            child: Column(
                              children: [
                                Image.asset(
                                  appbarImages[index],
                                  color: currentPageIndex.value == index
                                      ? Colors.white
                                      : Colors.grey[200],
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  imagetxt[index],
                                  style: TextStyle(
                                    color: currentPageIndex.value == index
                                        ? Colors.white
                                        : Colors.grey,
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
      body: PageView(controller: pageController, children: [
        TodayReportPage(),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          color: Colors.amber,
        ),
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
