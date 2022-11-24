import 'package:eandpwall/firebase_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController txtemail2  = TextEditingController();
  TextEditingController txtpassword2  = TextEditingController();
  // var txtkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 25,right: 25,top: 15,bottom: 15),
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      return 'Emter Email';
                    }
                    else{
                      return null;
                    }
                  },
                  controller: txtemail2,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    label: Text("E-mail"),
                    suffixIcon: Icon(Icons.email_outlined,color: Colors.blue.shade900,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:25,right: 25,top: 15,bottom: 15),
                child: TextFormField(
                  controller: txtpassword2,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    label: Text("Password"),
                    suffixIcon: Icon(Icons.lock,color: Colors.blue.shade900,),
                  ),
                ),
              ),
              InkWell(onTap: ()async{
                String msg = await loginEmailPassword(txtemail2.text,txtpassword2.text);
                Get.snackbar('$msg','');
                if(msg == "Success")
                  {
                      Get.offNamed('out');
                  }
              },
                child: Container(
                  color: Colors.blue.shade600,
                  margin: EdgeInsets.all(25),
                  width: double.infinity,
                  height: 40,
                  child: Center(child: Text("Sign in",style: TextStyle(fontSize: 30,color: Colors.white),)),
                ),
              ),
              SizedBox(height: 15,),
             TextButton(onPressed: ()async{
               bool msg = await googleLogin(),
             }, child: Text("Google")),

              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?"),
                  InkWell(onTap: (){
                    Navigator.pushReplacementNamed(context,'home');
                  },
                    child: Text("Sign up",style: TextStyle(color: Colors.blue),),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
