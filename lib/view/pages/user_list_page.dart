import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/widgets/appbar_widget.dart';

class UserListPage extends StatelessWidget {
  static const routePth = '/userList';
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppbarWidgget(
            headTxt: 'User List',
            onPressed: () {
              context.pop();
            },
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.sizeOf(context).width,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'User: Tester',
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Logged in: 12-01-2024',
                              style: TextStyle(fontFamily: 'poppins'),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              alignment: Alignment.center,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: const Color(0xff0008B3),
                                ),
                              ),
                              child: const Text(
                                'STAFF',
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff0008B3)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
