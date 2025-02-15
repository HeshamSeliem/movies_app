import 'package:flutter/material.dart';
import 'package:movies_app/models/film_model.dart';

class Horisentallistwidget extends StatelessWidget {
   Horisentallistwidget({required this.model,required this.containerHeight,required this.containerWidth, super.key});
 FilmModel  model;
 double containerHeight;
 double containerWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              width: containerWidth,
              height: containerHeight,
              child: Stack(
                children: [
                  Image.asset(model.image,
                  fit: BoxFit.fill,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(model.rate.toString(),style: Theme.of(context).textTheme.bodySmall,),
                          Image.asset("assets/images/star.png")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
  }
}