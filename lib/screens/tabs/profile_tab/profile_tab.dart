import 'package:flutter/material.dart';
import 'package:movies_app/firebase/firebase_manager.dart';
import 'package:movies_app/provider/user_provider.dart';
import 'package:movies_app/screens/auth/login_screen.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome ${provider.userModel!.name}"),
          Center(
            child: ElevatedButton(onPressed: (){
                FirebaseManager.logOut();
                Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()), 
                 (route) => false,
                 );
            }, child: Text("Log out"))
          ),
        ],
      ),
    );
  }
}