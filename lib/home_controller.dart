import 'package:get/get.dart';

class HomeController extends GetxController {
  var x = 0.obs;
  changeValue() {
    x += 1;
  }
}
