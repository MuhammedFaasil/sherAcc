import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/pages/dash_page.dart';
import 'package:sher_acc_erp/view/pages/expenses_page.dart';
import 'package:sher_acc_erp/view/pages/home_page.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';
import 'package:sher_acc_erp/view/pages/splash_screen.dart';
import 'package:sher_acc_erp/view/pages/statement_page.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';

final router = GoRouter(initialLocation: SplashScreen.routePath, routes: [
  GoRoute(
    path: SplashScreen.routePath,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: LoginPage.routePath,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: HomePage.routePath,
    builder: (context, state) => HomePage(),
  ),
  GoRoute(
    path: TodayReportPage.routePath,
    builder: (context, state) => const TodayReportPage(),
  ),
  GoRoute(
    path: StatementPage.rotePath,
    builder: (context, state) => const StatementPage(),
  ),
  GoRoute(
    path: DashPage.rotePath,
    builder: (context, state) => const DashPage(),
  ),
  GoRoute(
    path: ExpensesPage.routPath,
    builder: (context, state) =>  ExpensesPage(),
  ),
]);
