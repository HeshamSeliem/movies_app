import 'package:flutter/material.dart';
import '../my_theme_data.dart';
import 'package:flutter/Cupertino.dart';

class FilmDetails extends StatefulWidget {
  const FilmDetails({super.key});
  static const String routeName = "FilmDetails";

  @override
  State<FilmDetails> createState() => _FilmDetailsState();
}

class _FilmDetailsState extends State<FilmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  Image.asset(
                    "assets/images/film1.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          MyThemeData.darkColor.withOpacity(0.2),
                          Color(0xff000000).withOpacity(0.92),
                        ],
                        stops: const [
                          0.0,
                          0.95
                        ], // Define where each color starts
                        tileMode: TileMode.mirror, // Mirror the gradient
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 16, // Account for status bar height
                    left: 16,
                    right: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Back Button
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context); // Navigate back
                          },
                          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                        ),

                        // Bookmark Button
                        IconButton(
                          onPressed: () {
                            // Add bookmark functionality here
                          },
                          icon: Icon(Icons.bookmark_outlined, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.03,
                    child: Text(
                      "Film Title",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Button and Other Content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Watch Button
                  ElevatedButton(
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    child: Text(
                      "Watch",
                      style: TextStyle(
                        fontSize: 20,
                        color: MyThemeData.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        MyThemeData.RedBottun,
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.all(15),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Container
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      color: MyThemeData.SecondaryColor,
                      borderRadius:
                          BorderRadius.circular(16), // Add border radius
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite),
                          color: MyThemeData.commonColor,
                        ),
                        Text(
                          "15",
                          style: TextStyle(
                            color: MyThemeData.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Second Container
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      color: MyThemeData.SecondaryColor,
                      borderRadius:
                          BorderRadius.circular(16), // Add border radius
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.timelapse, color: MyThemeData.commonColor),
                        Text(
                          "90",
                          style: TextStyle(
                            color: MyThemeData.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                      color: MyThemeData.SecondaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star),
                          color: MyThemeData.commonColor,
                        ),
                        Text(
                          "7.6",
                          style: TextStyle(
                            color: MyThemeData.primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text("Screen Shots"),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.18,
                child: Image.asset("assets/images/film1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.18,
                child: Image.asset("assets/images/film1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.18,
                child: Image.asset("assets/images/film1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
