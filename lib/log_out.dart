import 'package:eandpwall/firebase_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogOut_Screen extends StatefulWidget {
  const LogOut_Screen({Key? key}) : super(key: key);

  @override
  State<LogOut_Screen> createState() => _LogOut_ScreenState();
}

class _LogOut_ScreenState extends State<LogOut_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          centerTitle: true,
           title: Text("Home Screen",),
          actions: [
            IconButton(onPressed: (){
              logout();
              Get.offNamed('login');
            }, icon:Icon(Icons.logout)),
          ],
      ),
      ),
    );
  }
}
