import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class SumController extends GetxController {

  var counter1 = 0.obs;
  var counter2 = 0.obs;

  void increment1() => counter1.value++;
  void increment2() => counter2.value++;

  int get sum => counter1.value+counter2.value;
}