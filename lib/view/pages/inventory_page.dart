import 'package:flutter/material.dart';
import 'package:sher_acc_erp/core/constants/inventory_constants/inventory_constants.dart';
import 'package:sher_acc_erp/view/widgets/items_grid_widget.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final constants = InventoryConstants();
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                itemCount: 14,
                itemBuilder: (context, index) {
                  return ItemsGridWidget(
                      onTap: () {},
                      iconsUrl: constants.inventoryImages[index],
                      nameTxt: constants.inventoryTxt[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
