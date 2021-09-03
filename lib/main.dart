import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/secoundScreen.dart';
import 'package:getx/state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(
          name: '/page',
          page: () => Secound(),
        ),
        GetPage(
          name: '/REACTIVE',
          page: () => ReActive(),
        ),
      ],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  getBottom() {
    Get.bottomSheet(
        Container(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(
                  Icons.dark_mode,
                  color: Colors.white,
                ),
                title: Text('TURN DARK MODE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () => Get.changeTheme(ThemeData.dark()),
              ),
              ListTile(
                leading: Icon(Icons.light_mode, color: Colors.white),
                title: Text('TURN LIGHT MODE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                onTap: () => Get.changeTheme(ThemeData.light()),
              )
            ],
          ),
        ),
        enableDrag: true,
        isDismissible: true);
  }

  void toast() {
    Get.showSnackbar(GetBar(
      borderColor: Colors.teal,
      borderRadius: 30,
      isDismissible: true,
      overlayBlur: 1,
      mainButton: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.done),
      ),
      margin: EdgeInsets.all(20),
      backgroundColor: Colors.teal,
      backgroundGradient: LinearGradient(colors: [Colors.purple, Colors.green]),
      message: 'title',
      messageText: Text(
        'THIS IS SNACKBAR EXAMPLE',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      title: 'SNACKBAR',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () => toast(),
                  icon: Icon(Icons.add_task),
                  label: Text('SHOW SNACK BAR')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () => Get.defaultDialog(
                      title: 'THIS IS DIALOG BOX',
                      radius: 30,
                      middleTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      middleText: 'THIS IS MIDDLE TEXT EXAMPLE'),
                  icon: Icon(Icons.info_rounded),
                  label: Text('SHOW DIALOG')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () => getBottom(),
                  icon: Icon(Icons.book),
                  label: Text('SHOW BOTTOM SHEET')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () => Get.to(() => Secound()),
                  icon: Icon(Icons.navigate_next),
                  label: Text('NAVIGATE TO NEXT SCREEN')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () => Get.toNamed("/page"),
                  icon: Icon(Icons.navigate_next_sharp),
                  label: Text('NAVIGATE TO NEXT SCREEN\n (USING NAME ROUTE)')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed("/REACTIVE"),
                  child: Text('REACTIVE STATE MANAGER'))
            ],
          ),
        ));
  }
}
