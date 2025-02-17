import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/firebase/firebase_manager.dart';
import 'package:movies_app/models/user_model.dart';
// this class to store uid to comfort auto login
class UserProvider extends ChangeNotifier{
   
    UserModel? userModel; // holds the user data 
    User? firebaseUser; // holds the firebase user data


     // in the constructore hold an instance from usermodel
     UserProvider(){
      firebaseUser = FirebaseAuth.instance.currentUser; // get the current user
      if(firebaseUser != null){
        //read the user data from firestore // call with init function
        initUser();
      }
     }

     // this function to read user data fron firestore
     initUser()
    async {
      // now i must to go to firebase manager and create function to read user
      userModel =await FirebaseManager.readUser();
      notifyListeners();
     }
}