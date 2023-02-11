import 'dart:developer';
import 'package:dio/dio.dart';

import '../../../general/api/base_client.dart';
import '../../../general/helpers/dio_exceptions.dart';
import '../model/surah_model.dart';

SurahModel? surahModel;

class GetSurah {
  Future<SurahModel> surahList() async {
    log('work this');
    try {
      final response = await BaseClient.get(
        url: 'http://api.alquran.cloud/v1/surah',
      );

      if (response.statusCode == 200) {
        surahModel = SurahModel.fromJson(response.data);
        log(surahModel!.data![0].englishName!);

        return surahModel!;
      } else {
        //
      }
      return Future.error(response.data);
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log(errorMessage);
      rethrow;
    }
  }
}
