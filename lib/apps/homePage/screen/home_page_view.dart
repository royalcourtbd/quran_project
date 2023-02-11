import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../general/utils/config.dart';
import '../controller/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surah Index'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              (() => controller.isLoading.value
                  ? const SizedBox(
                      height: 100,
                      width: 100,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      shrinkWrap: true,
                      itemCount: controller.surahList.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              color: Colors.red,
                              child: Text(controller.surahList[index].number!
                                  .toString()),
                            ),
                          ),
                          title: Text(controller.surahList[index].name!),
                        );
                      },
                    )),
            ),
          ],
        ),
      ),
    );
  }
}
