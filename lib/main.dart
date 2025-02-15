import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/firebase_options.dart';
import 'package:movies_app/my_theme_data.dart';
import 'package:movies_app/home_screen.dart';
import 'package:movies_app/screens/Film_details.dart';
import 'package:movies_app/screens/auth/create_account.dart';
import 'package:movies_app/screens/auth/login_screen.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       theme: MyThemeData.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName : (context)=> LoginScreen(),
        CreateAccount.routeName : (context)=> CreateAccount(),
        HomeScreen.routeName : (context)=> HomeScreen(),
        FilmDetails.routeName: (context) => FilmDetails(),
      },
    );
  }
}
