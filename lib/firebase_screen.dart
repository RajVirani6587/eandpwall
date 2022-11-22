
import 'package:firebase_auth/firebase_auth.dart';

Future<String> singup(String e1,String p1) async{
  try {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
     await firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);
     return "Success";
  }
  on FirebaseAuthException catch (e){
    if(e.code == "weak-password")
      {
          return "Password at list 6 Char";
      }
    else if (e.code == "email-already-in-use")
      {
          return "Email already Exist";
      }
  }
  return "not_found";
}


Future<String> loginEmailPassword(String e1,String p1) async{
  try {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.createUserWithEmailAndPassword(email: e1, password: p1);
    return "Success";
  }
  on FirebaseAuthException catch (e){
    if(e.code == "user-not-found")
    {
      return "No user found for thst email.";
    }
    else if (e.code == 'wrong-password')
    {
      return 'Wrong password provided for that user.';
    }
  }
  return "not_found";
}

bool checkUser(){
  User? user = FirebaseAuth.instance.currentUser;
  if(user!=null)
    {
      return true;
    }
  return false;
}

void logout(){
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}
