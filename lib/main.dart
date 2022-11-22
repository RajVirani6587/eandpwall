import 'package:eandpwall/home_screen.dart';
import 'package:eandpwall/log_out.dart';
import 'package:eandpwall/login.dart';
import 'package:eandpwall/splace_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> splesh_Screen(),
        'login':(context)=>Login_Screen(),
        'home':(context)=> Home_Screen(),
        'out':(context)=>LogOut_Screen(),
      },
    )
  );
}