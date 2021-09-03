import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';

class ReActive extends StatefulWidget {
  @override
  _ReActiveState createState() => _ReActiveState();
}

class _ReActiveState extends State<ReActive> {
  Name name = Get.put(Name());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => name.inc(),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('REACTIVE MANAGER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${name.model.string} ${name.model.number}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => name.convertToUpperCase(),
                child: Text('CLICK TO UPPER CASE'))
          ],
        ),
      ),
    );
  }
}
