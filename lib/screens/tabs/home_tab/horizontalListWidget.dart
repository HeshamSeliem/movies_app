import 'package:flutter/material.dart';
import 'package:movies_app/models/film_model.dart';

import '../../../my_theme_data.dart';
import '../../Film_details.dart';

class Hhorizontallistwidget extends StatelessWidget {
  Hhorizontallistwidget({required this.model,required this.containerHeight,required this.containerWidth, super.key});
 FilmModel  model;
 double containerHeight;
 double containerWidth;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(context, FilmDetails.routeName);
      },
      child: SizedBox(
                width: containerWidth,
                height: containerHeight,
                child: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(model.image,
                      fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 8),
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color:const Color(0xff282A28)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(model.rate.toString(),style: Theme.of(context).textTheme.bodySmall,),
                            // Image.asset("assets/images/star.png")
                            Icon(Icons.star,color: MyThemeData.commonColor,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
    );
  }
}