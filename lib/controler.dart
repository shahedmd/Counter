import 'package:get/get.dart';

class Controller extends GetxController {
  var total = 0.obs;
  void increment(int price) => total.value += price;
  void descrement(int price) => total.value -= price;
}
