import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class Controller extends GetxController {

  var counter = 0.obs;

  void increment() => counter.value++;

  @override
  void onInit(){
    ever(counter, (_) => print("Counter changed"));
    once(counter, (_) => print("Counter changed for the first time"));
    debounce(counter, (_) => print("Counter hasn't changed in a sec"),time: Duration(seconds: 1));
    interval(counter, (_) => print("Counter changed at every 1 sec."),time: Duration(seconds: 1));

  }
}








//
//class Controller extends GetxController {
//
//  int counter = 0;
//
//  void increment() {
//    counter++;
//    update(); // look here!
//  }
//
//}

















//class MyController extends GetxController {
//
//  @override
//  void onInit() { // called immediately after the widget is allocated memory
//    //fetchApi();
//    super.onInit();
//  }
//
//  @override
//  void onReady() { // called after the widget is rendered on screen
//    //showIntroDialog();
//    super.onReady();
//  }
//
//  @override
//  void onClose() { // called just before the Controller is deleted from memory
//    //closeStream();
//    super.onClose();
//  }
//
//}















