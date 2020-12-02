import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';

class User {
  String name;

  User({this.name});
}

class UserController extends GetxController {

  var user = User(name: "Starfire").obs; // declare just like any other variable

  void changeName() {
    user.update((val) {
      if(val.name=='Getx Reactive State Mangement')
      val.name= 'Getx mangement';
      else
        val.name= 'Getx Reactive State Mangement';
    });
  } // use .value and access any variables of the class


}
