import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controlllers/sumController.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key key}) : super(key: key);

  SumController countController = Get.put(SumController());

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
            SizedBox(
              height: 15,
            ),
            Text('Obx value of Counter Variable 1'),
            Obx(
              () => Text(
                '  ${countController.counter1.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {
                countController.increment1();
              },
              child: Text('Increment Counter 1'),
            ),
            Text('Obx value of Counter Variable 2'),
            Obx(
              () => Text(
                '  ${countController.counter2.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {
                countController.increment2();
              },
              child: Text('Increment Counter 2'),
            ),
            Text('Total'),
            Obx(
              () => Text(
                '  ${countController.sum}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
