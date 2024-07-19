import 'package:get/get.dart';
import 'package:toggle_button/home/viewpage/page2.dart';

class MyRoutes extends GetxController {
  static const home = '/ToggleButtonPage';
}

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: MyRoutes.home,
      page: () => const Page2(),
    ),
  ];
}
