import 'package:get/get.dart';

class SlideButton extends GetxController {
  var isSelected = false.obs;
  var isTap = false.obs;
  var datePicker = false.obs;
  var loadingIndicatior = false.obs;
  void sliderChanger() {
    isSelected.value = !isSelected.value;
    print('isSelected');
    print(isSelected.value);
  }

  void loadingIndicatorChanger() {
    loadingIndicatior.value = !loadingIndicatior.value;
  }

  void datePickerChanger() {
    datePicker.value = !datePicker.value;
    print('date picker');
    print(datePicker.value);
  }

  void firstChanger() {
    isTap.value = !isTap.value;
    print('isTapped');
    print(isTap.value);
  }
}
