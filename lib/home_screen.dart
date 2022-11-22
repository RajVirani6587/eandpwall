import 'package:eandpwall/firebase_screen.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController txtemail  = TextEditingController();
  TextEditingController txtpassword  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtemail,
              ),
              SizedBox(height: 10,),
              TextField(
                controller: txtpassword,
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                singup(txtemail.text,txtpassword.text);
              }, child: Text("Sing Up"))
            ],
          ),
        ),
      ),
    );
  }
}
