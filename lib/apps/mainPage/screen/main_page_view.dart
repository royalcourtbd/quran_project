import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../general/utils/config.dart';

import '../controller/main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
    );
  }
}
