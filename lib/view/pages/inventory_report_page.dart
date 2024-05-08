import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/constants/inventory_report_constants/inventory_report_constants.dart';
import 'package:sher_acc_erp/view/widgets/items_grid_widget.dart';

class InventoryReportPage extends StatelessWidget {
  const InventoryReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = InventoryReportConstants();
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
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
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ItemsGridWidget(
                      onTap: () {},
                      iconsUrl: constants.inventoryReportImages[index],
                      nameTxt: constants.inventoryReportTxt[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
