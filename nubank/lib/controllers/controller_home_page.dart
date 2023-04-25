import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String saldo = "R\$ 4000,00";
  bool eyesValue = true;
  String creditCardValue = 'R\$ 48604,00';

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
