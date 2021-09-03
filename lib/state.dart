import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReActive extends StatefulWidget {
  @override
  _ReActiveState createState() => _ReActiveState();
}

class _ReActiveState extends State<ReActive> {
  RxInt number = 1.obs;
  RxString string = 'COUNT IS'.obs;
  inc() {
    number++;
  }

  lower() {
    string.toLowerCase();
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
                  '$string $number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            OutlinedButton(
                onPressed: () => lower(), child: Text('CLICK TO LOWER CASE'))
          ],
        ),
      ),
    );
  }
}
