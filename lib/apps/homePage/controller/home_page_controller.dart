import 'dart:developer';

import 'package:get/get.dart';
import 'package:quran_project/apps/homePage/get_surah_repo/get_surah_repo.dart';

import '../model/surah_model.dart';

class HomePageController extends GetxController {
  static HomePageController instance = Get.find();

  var isLoading = false.obs;
  final surahList = RxList<Datum>([]);
  int get surahListLength => surahList.length;

  fetchSurah() async {
    log('cart length $surahListLength');
    try {
      isLoading(true);
      var suraList = await GetSurah().surahList();
      surahList.clear();
      surahList.addAll(suraList.data!);

      log('Surah List length $surahListLength');
    } catch (error) {
      throw Exception(error);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchSurah();
    super.onInit();
  }

  // @override
  // void onReady() {
  //   fetchSurah();
  //   log('message');
  //   super.onReady();
  // }
}
