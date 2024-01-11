import 'package:get/get.dart';

class SignUpController extends GetxController {
  final RxString selectedBirthDate = 'Select Date'.obs;

  final RxString selectedGender = ''.obs;

  final RxString selectedDesignation = ''.obs;

  void chnageBirthDate(String Date) {
    selectedBirthDate.value = Date;
  }
}
