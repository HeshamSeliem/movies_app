import 'package:flutter/material.dart';
import 'package:movies_app/models/film_model.dart';
import 'package:movies_app/models/films_response.dart';
import 'package:movies_app/screens/tabs/home_tab/horizontalListWidget.dart';

import 'package:movies_app/screens/web_view_screen.dart';
import '../my_theme_data.dart';
import 'package:flutter/Cupertino.dart';


//import '../models/cast_model.dart';
//import '../my_theme_data.dart';
//import 'package:flutter/Cupertino.dart';

//import 'cast_widget.dart';


class FilmDetails extends StatefulWidget {
  const FilmDetails({super.key});
  static const String routeName = "FilmDetails";



  @override
  State<FilmDetails> createState() => _FilmDetailsState();
}
final List<CastModel> castList = [
  CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 1',
    character: 'Role 1',
  ),
  CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 2',
    character: 'Role 2',
  ),
  CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 3',
    character: 'Role 3',
  ),CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 3',
    character: 'Role 3',
  ),CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 3',
    character: 'Role 3',
  ),CastModel(
    img: 'https://pixabay.com/images/search/network/',
    name: 'Actor 3',
    character: 'Role 3',
  ),
];
class _FilmDetailsState extends State<FilmDetails> {
  @override
  Widget build(BuildContext context) {

    var movie = ModalRoute.of(context)!.settings.arguments as Movies;


    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: Height * 0.65,
              width: double.infinity,
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  Image.network(
                    movie.mediumCoverImage ?? "",

                 
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
                        stops: const [0.0, 0.95],
                        tileMode: TileMode.mirror,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 16,
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
                          icon: Icon(Icons.arrow_back_ios_new,
                              color: Colors.white),
                        ),

                        // Bookmark Button
                        IconButton(
                          onPressed: () {
                            // Add bookmark functionality here
                          },
                          icon: Icon(Icons.bookmark_outlined,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: Height * 0.03,
                    child: Text(
                      movie.title ?? "",  // the title of movie
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                WebViewApp(url: movie.url ?? "",
                                title: movie.title ?? ""
                                )),
                      );
                    },

                    
                   
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
                    child: Text(
                      "Watch",
                      style: TextStyle(
                        fontSize: 20,
                        color: MyThemeData.primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Container
                  Container(
                    height: double.infinity,
                    width: Width * 0.28,
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
                          icon: const Icon(Icons.favorite),
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
                    width: Width * 0.28,
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
                          movie.runtime.toString(),
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
                    width: Width * 0.28,
                    decoration: BoxDecoration(
                      color: MyThemeData.SecondaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon:const Icon(Icons.star),
                          color: MyThemeData.commonColor,
                        ),
                        Text(
                          movie.rating.toString(), // show the rate of movie
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
              height: Height * 0.02,
            ),
            const Row(
              children: [
                Padding(

                  padding:  EdgeInsets.only(left: 16),

                  

                  child: Text(
                    "Screen Shots",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: SizedBox(
                      width: double.infinity,
                      height: Height * 0.18,

                      child: Image.network(
                        movie.smallCoverImage ?? "",

                      

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Height * 0.02,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: SizedBox(
                      width: double.infinity,
                      height: Height * 0.18,

                      child: Image.network(
                        movie.mediumCoverImage ?? "",

                      

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    child: SizedBox(
                      width: double.infinity,
                      height: Height * 0.18,

                      child: Image.network(
                        movie.largeCoverImage ?? "",

                      

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

           const Row(

           

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Similar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Container(
              height: Height * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //      Hhorizontallistwidget(
                  //        model: filmsList[4],
                  //        containerHeight: Height * 0.3,
                  //        containerWidth: Width * 0.45,
                  //      ),
                  //      Hhorizontallistwidget(
                  //        model: filmsList[5],
                  //        containerHeight: Height * 0.3,
                  //        containerWidth: Width * 0.45,
                  //      ),
                  //    ],
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Hhorizontallistwidget(
                  //       model: filmsList[6],
                  //       containerHeight: Height * 0.3,
                  //       containerWidth: Width * 0.45,
                  //     ),
                  //     Hhorizontallistwidget(
                  //       model: filmsList[7],
                  //       containerHeight: Height * 0.3,
                  //       containerWidth: Width * 0.45,
                  //     ),
                  //   ],
                  // ),

                 
            SizedBox(
              height: Height * 0.02,
            ),
           const Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Summary",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                alignment: Alignment.topCenter,
                width: Width,
                child: Text(

                   (movie.summary == "")? "No Summary to this movie "
                   :movie.summary ?? ""
                   ),
              ),
            ),

            SizedBox(
              height: Height * 0.02,
            ),
           
      ),
    );
  }
}
