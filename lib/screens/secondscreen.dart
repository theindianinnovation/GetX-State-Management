import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controlllers/countController.dart';
import 'package:getx_state_management/controlllers/userCountroller.dart';
import 'package:getx_state_management/screens/thirdScreen.dart';

class Secondscreen extends StatefulWidget {
  Secondscreen({Key key}) : super(key: key);

  @override
  SecondscreenState createState() => SecondscreenState();
}

class SecondscreenState extends State<Secondscreen> {
  Controller countController = Get.find();
  UserController userController = Get.find();

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
            Text('GetBuilder Value of Count '),
            GetBuilder<Controller>(
              builder: (value) => Text(
                '${value.counter}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 15,),

            Text('GetX Value of Count '),
            GetX<Controller>(
              builder: (val) => Text(
                ' ${val.counter.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),


            Text('Obx value of Counter Variable'),
            Obx(
                  () => Text(
                '  ${countController.counter.value}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text('Obx value of User Name'),
            Obx(() => Text(
              " ${userController.user.value.name}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),

            RaisedButton(
                child: Text('Go to Third Screen'),
                onPressed: () {
                  Get.to(ThirdScreen());
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        countController.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}





















