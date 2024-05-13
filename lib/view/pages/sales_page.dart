import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/pages/cash_sale_page.dart';
import 'package:sher_acc_erp/view/pages/credit_sale_page.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';

class SalesPage extends HookWidget {
  static const routePath = '/salesPage';
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isCredit = useState<bool>(true); // Set default to Credit
    final pageController =
        usePageController(initialPage: 0); // Set initial page to Credit
    final currentPageIndex = useState(0);

    void updateSelectedPage(int newIndex) {
      pageController.animateToPage(newIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      currentPageIndex.value = newIndex;
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarWidgget(
          headTxt: 'Sales',
          onPressed: () {
            context.pop();
          },
          iconFirst: SizedBox(
            width: 150,
            child: Stack(
              children: [
                Positioned(
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      isCredit.value = false; // Set to Cash
                      updateSelectedPage(0); // Switch to Cash page
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 6, top: 2),
                      width: 70,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: isCredit.value ? Colors.white : Colors.green,
                      ),
                      child: const Text(
                        'Cash',
                        style: TextStyle(fontFamily: 'poppins'),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () {
                      isCredit.value = true; // Set to Credit
                      updateSelectedPage(1); // Switch to Credit page
                    },
                    child: Container(
                      width: 65,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: isCredit.value ? Colors.green : Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Credit',
                          style: TextStyle(fontFamily: 'poppins'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          iconSecondPath: 'assets/icons/Settings_icon.png',
        ),
      ),
      body: PageView(
        onPageChanged: (newIndex) => currentPageIndex.value = newIndex,
        controller: pageController,
        children: [isCredit.value ? const CreditSalePage() : const CashSalePage()],
      ),
    );
  }
}
