import 'package:get/get_navigation/get_navigation.dart';
import 'package:quran_project/apps/homePage/screen/home_page_view.dart';

import '../../apps/mainPage/screen/main_page_view.dart';

class RoutesClass {
  static String mainPage = '/';
  static String homePage = '/homepage';

  static String getMainRoute() => mainPage;
  static String getHomePageRoute() => homePage;

  static List<GetPage> routes = [
    GetPage(
      page: () => const MainPageView(),
      name: mainPage,
    ),
    GetPage(
      page: () => const HomePageView(),
      name: homePage,
    ),
  ];
}
