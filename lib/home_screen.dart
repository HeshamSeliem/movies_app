import 'package:flutter/material.dart';
import 'package:movies_app/provider/my%20provider.dart';
import 'package:movies_app/tabs/browse_tab/browse_tab.dart';
import 'package:movies_app/tabs/home_tab/home_tab.dart';
import 'package:movies_app/tabs/profile_tab/profile_tab.dart';
import 'package:movies_app/tabs/search_tab/search_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
 static const String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      builder: (context, child) {
        var provider = Provider.of<MyProvider>(context);
        return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
         currentIndex: provider.selectedIndex,
         onTap: (index){
           provider.changeIndex(index);
         },
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: ""
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ""
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.browse_gallery_sharp),
              label: ""
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: ""
              ),
          ],
          
          ),
       
          body: tabs[provider.selectedIndex] ,
      );
      },
    );
  }
   List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    ProfileTab()


   ];
}