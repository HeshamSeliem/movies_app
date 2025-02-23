import 'package:flutter/material.dart';
import 'package:movies_app/firebase/firebase_manager.dart';
import 'package:movies_app/provider/user_provider.dart';
import 'package:movies_app/screens/auth/login_screen.dart';
import 'package:movies_app/screens/Text_Profile.dart';
import 'package:provider/provider.dart';

import '../../../my_theme_data.dart';
import '../../Edit_Screen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var provider = Provider.of<UserProvider>(context);

    // Handle null userModel
    if (provider.userModel == null) {
      return Center(child: Text('No user data available'));
    }

    return Scaffold(
backgroundColor: MyThemeData.darkColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header Section
            Container(
              width: double.infinity,
              height: height * 0.44, // Adjust height as needed
              decoration: BoxDecoration(
                color: Color(0xff212121),
              ),
              child: Column(
                children: [
                  SizedBox(height: height * 0.09),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          children: [
                            // Profile Picture
                            Container(
                              width: 150,
                              height: 118,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/gamer.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            // User Name
                            TextProfile(
                              text: provider.userModel!.name,
                              TextSize: 20,
                              color: MyThemeData.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: width * 0.05),
                      // Wishlist and History Counts
                      Row(
                        children: [
                          _buildCountColumn("12", "Wish List"),
                          SizedBox(width: width * 0.06),
                          _buildCountColumn("10", "History"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Edit Profile Button
                      ElevatedButton(
                        onPressed: () {
                          // Use Navigator.push instead of pushReplacement
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditScreen(),
                            ),
                          );
                        },
                        child: TextProfile(
                          text: ("Edit Profile"),
                          TextSize: 20,
                          color: MyThemeData.darkColor,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: MyThemeData.commonColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: width * 0.15, vertical: 15),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                      // Exit Button
                      ElevatedButton(
                        onPressed: () async {
                          try {
                            await FirebaseManager().signOut();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    "Failed to log out. Please try again."),
                              ),
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextProfile(
                              text: ("Exit"),
                              TextSize: 20,
                              color: MyThemeData.primaryColor,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.output_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Additional Content Section
            Container(
              width: width,
              height: height * 0.4,
              child: Center(
                child: Image.asset(
                  "assets/images/img_4.png",
                  width: 125,
                  height: 125,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Widget for Wishlist/History Counts
  Widget _buildCountColumn(String count, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextProfile(
          text: count,
          TextSize: 36,
          color: MyThemeData.primaryColor,
        ),
        SizedBox(height: 10),
        TextProfile(
          text: label,
          TextSize: 24,
          color: MyThemeData.primaryColor,
        ),
      ],
    );
  }
}