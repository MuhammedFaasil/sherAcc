import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';
import 'package:sher_acc_erp/view/widgets/branch_select_widget.dart';
import 'package:sher_acc_erp/view/widgets/statement_grid_widget.dart';

class StatementPage extends StatelessWidget {
  static const rotePath = '/statementPage';
  const StatementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppbarWidgget(
            headTxt: 'Statement',
            onPressed: () {
              context.pop();
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const BranchSelectWidget(headTxt: 'Branch', items: ['SHOPE'],),
              const SizedBox(
                height: 10,
              ),
              // Container(
              //   height: 300,
              //   width: MediaQuery.sizeOf(context).width,
              //   child: StickyHeadersTable(
              //     cellAlignments: CellAlignments.base,
              //     columnsLength: 3,
              //     rowsLength: 10,
              //     columnsTitleBuilder: (columnIndex) => Container(
              //       width: 200,
              //       // height: 30,
              //       color: Colors.amber,
              //     ),
              //     rowsTitleBuilder: (rowIndex) => SizedBox(
              //       height: 1,
              //       width: 1,
              //     ),
              //     contentCellBuilder: (columnIndex, rowIndex) => Container(
              //       // height: 30,
              //       // width: 200,
              //       color: Colors.red,
              //     ),
              //   ),
              // )
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: DataTable(
                    showBottomBorder: true,
                    headingRowHeight: 40,

                    // decoration: const BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(20))),
                    headingTextStyle: const TextStyle(
                        color: Colors.white, fontFamily: 'poppins'),
                    headingRowColor:
                        const MaterialStatePropertyAll(Color(0xff0008B3)),
                    dataRowMaxHeight: 30,
                    dataRowMinHeight: 30,
                    dataRowColor: const MaterialStatePropertyAll(Colors.white),
                    columnSpacing: 100,
                    border: TableBorder.all(
                        color: const Color.fromARGB(255, 195, 194, 194),
                        width: .4),
                    columns: const [
                      DataColumn(label: Text('Party')),
                      DataColumn(label: Text('Debit')),
                      DataColumn(label: Text('Credit')),
                    ],
                    rows: [
                      for (int i = 0; i <= 15; i++)
                        const DataRow(
                          cells: [
                            DataCell(
                              Text(''),
                            ),
                            DataCell(
                              Text(''),
                            ),
                            DataCell(
                              Text(''),
                            ),
                          ],
                        ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              const StatementGridWidget()
            ],
          ),
        ),
      ),
    );
  }
}
