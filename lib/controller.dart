import 'package:get/get.dart';
import 'package:getx/model.dart';

class Name extends GetxController {
  MyModel model = MyModel(number: 1.obs, string: 'count is :'.obs);

  convertToUpperCase() {
    model.string.value = model.string.value.toUpperCase();
  }

  inc() {
    model.obs.value.number++;
    print(model.number);
  }

  cleanUp() {
    print('SUCCESSFULLY CLEANED THIS CODE');
  }
}
