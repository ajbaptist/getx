import 'package:get/get.dart';

class MyModel {
  RxInt number = 1.obs;
  RxString string = 'count is:'.obs;

  MyModel({required this.number, required this.string});
}
