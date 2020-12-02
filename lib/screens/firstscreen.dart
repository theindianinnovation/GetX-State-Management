import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controlllers/countController.dart';
import 'package:getx_state_management/controlllers/userCountroller.dart';
import 'package:getx_state_management/screens/secondscreen.dart';

class MyHomePage extends StatelessWidget {
  final Controller countController = Get.put(Controller());
  final UserController userController =Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx state Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            GetBuilder<Controller>(
              init: Controller(),
              builder: (value) => Text(
                '${value.counter}',
              ),
            ),
            RaisedButton(
                child: Text('Go to Second Screen'),
                onPressed: () {
                  Get.to(Secondscreen());
                }),
            SizedBox(
              height: 15,
            ),
            GetX<Controller>(
              builder: (val) => Text(
                'Getx counter value ${val.counter.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
                child: Text('Update Name'),
                onPressed: () {
                  userController.changeName();
                }),
            Obx(() => Text(
                  '${userController.user.value.name}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Get.find<Controller>().increment();
          countController.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
