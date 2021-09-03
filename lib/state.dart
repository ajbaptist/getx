import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model.dart';

class ReActive extends StatefulWidget {
  @override
  _ReActiveState createState() => _ReActiveState();
}

class _ReActiveState extends State<ReActive> {
  MyModel model = MyModel(number: 1.obs, string: 'the count is:'.obs);
  inc() {
    model.number++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: inc,
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
                  "${model.string} ${model.number.toString()}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () =>
                    model.string.value = model.string.value.toUpperCase(),
                child: Text('CLICK TO UPPER CASE'))
          ],
        ),
      ),
    );
  }
}
