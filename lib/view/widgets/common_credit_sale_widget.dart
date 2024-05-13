import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/pages/add_itemtosale_page.dart';
import 'package:sher_acc_erp/view/widgets/sale_textfield_widget.dart';

class CommonCreditSaleWidget extends HookWidget {
  final String headTxtFirst;
  final String headTxtSecond;
  final List<Widget> customWidgets;

  const CommonCreditSaleWidget({
    super.key,
    required this.headTxtFirst,
    required this.headTxtSecond,
    required this.customWidgets,
  });

  @override
  Widget build(BuildContext context) {
    final expandedHeight = useState(450.0);
    final collapsedHeight = useState(200.0);
    const animationDuration = Duration(milliseconds: 300);
    final isExpanded = useState(false);

    return AnimatedContainer(
      duration: animationDuration,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: isExpanded.value ? expandedHeight.value : collapsedHeight.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            headTxtFirst,
            style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          const SaleTextFieldWidget(hintTxt: ''),
          Expanded(
            child: AnimatedContainer(
              duration: animationDuration,
              curve: Curves.easeInOut,
              height: isExpanded.value
                  ? expandedHeight.value
                  : collapsedHeight.value,
              child: Column(
                children: [
                  Theme(
                    data: ThemeData(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      enableFeedback: false,
                      controlAffinity: ListTileControlAffinity.platform,
                      title: const Text(
                        'Other',
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      children: customWidgets,
                      onExpansionChanged: (newIsExpanded) =>
                          isExpanded.value = newIsExpanded,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              backgroundColor: const Color(0xff0008B3),
            ),
            onPressed: () => context.push(AddItemToSalePage.routePath),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/icons/add_item_icon.png')),
                SizedBox(width: 10),
                Text(
                  'Add Item',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppins',
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
