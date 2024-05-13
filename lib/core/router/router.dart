import 'package:go_router/go_router.dart';
import 'package:sher_acc_erp/view/pages/about_developer_page.dart';
import 'package:sher_acc_erp/view/pages/add_itemtosale_page.dart';
import 'package:sher_acc_erp/view/pages/company_settings_page.dart';
import 'package:sher_acc_erp/view/pages/dash_page.dart';
import 'package:sher_acc_erp/view/pages/expenses_page.dart';
import 'package:sher_acc_erp/view/pages/general_settings_page.dart';
import 'package:sher_acc_erp/view/pages/home_page.dart';
import 'package:sher_acc_erp/view/pages/login_page.dart';
import 'package:sher_acc_erp/view/pages/other_registration_page.dart';
import 'package:sher_acc_erp/view/pages/sales_page.dart';
import 'package:sher_acc_erp/view/pages/salesman_page.dart';
import 'package:sher_acc_erp/view/pages/software_general_setting_page.dart';
import 'package:sher_acc_erp/view/pages/software_settings_page.dart';
import 'package:sher_acc_erp/view/pages/splash_screen.dart';
import 'package:sher_acc_erp/view/pages/statement_page.dart';
import 'package:sher_acc_erp/view/pages/today_report_page.dart';
import 'package:sher_acc_erp/view/pages/tools_page.dart';
import 'package:sher_acc_erp/view/pages/user_list_page.dart';

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
    builder: (context, state) => const HomePage(),
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
    builder: (context, state) => ExpensesPage(),
  ),
  GoRoute(
    path: ToolsPage.routePath,
    builder: (context, state) => const ToolsPage(),
  ),
  GoRoute(
    path: UserListPage.routePth,
    builder: (context, state) => const UserListPage(),
  ),
  GoRoute(
    path: SoftWareSettingsPage.routePath,
    builder: (context, state) => const SoftWareSettingsPage(),
  ),
  GoRoute(
    path: AboutDeveloperPage.routePath,
    builder: (context, state) => const AboutDeveloperPage(),
  ),
  GoRoute(
    path: SoftwareGeneralPage.routePath,
    builder: (context, state) => const SoftwareGeneralPage(),
  ),
  GoRoute(
    path: OtherRegistrationPage.routePath,
    builder: (context, state) => const OtherRegistrationPage(),
  ),
  GoRoute(
    path: SalesPage.routePath,
    builder: (context, state) => const SalesPage(),
  ),
  GoRoute(
    path: AddItemToSalePage.routePath,
    builder: (context, state) => const AddItemToSalePage(),
  ),
  GoRoute(
    path: SalesmanPage.routePath,
    builder: (context, state) => const SalesmanPage(),
  ),
  GoRoute(
    path: GeneralSettingsPage.routePath,
    builder: (context, state) => const GeneralSettingsPage(),
  ),
  GoRoute(
    path: CompanySettingsPage.routePath,
    builder: (context, state) => const CompanySettingsPage(),
  ),
]);
