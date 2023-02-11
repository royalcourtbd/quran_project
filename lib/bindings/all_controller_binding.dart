import 'package:get/get.dart';
import 'package:quran_project/apps/homePage/controller/home_page_controller.dart';
import 'package:quran_project/apps/mainPage/controller/main_page_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
      fenix: true,
    );
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
      fenix: true,
    );
  }
}
