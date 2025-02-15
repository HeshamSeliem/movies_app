import 'package:flutter/material.dart';
import 'package:movies_app/models/film_model.dart';
import 'package:movies_app/my_theme_data.dart';
import 'package:movies_app/screens/Film_details.dart';
import 'package:movies_app/screens/tabs/home_tab/horizontalListWidget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset("assets/images/header.png"),
              ],
              ),
              const SizedBox(
                height: 10,
              ),
               SizedBox(
                height: 350,
                 child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Hhorizontallistwidget(
                      model: filmsList[index],
                      containerHeight: 350,
                      containerWidth: 230,
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 20,),
                  itemCount: filmsList.length
                  ),
               ),
               Image.asset("assets/images/watch_now.png"),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       Text("Action"),
                     ],
                   ),
                   Column(
                     children: [
                       InkWell(
                         onTap: () {

                         },
                         child: Row(
                           children: [
                             Text("See More",style: TextStyle(color: MyThemeData.commonColor),),
                             SizedBox(width: 2,),
                             Icon(Icons.arrow_forward_outlined,color: MyThemeData.commonColor,size: 20,),
                           ],
                         ),
                       ),
                     ],
                   )
                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.01,),
               SizedBox(
                height: 180,
                 child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Hhorizontallistwidget(
                      model: filmsList[index],
                      containerHeight: 180,
                      containerWidth: 100,
                    );
                  }, 
                  separatorBuilder: (context, index) => const SizedBox(width: 20,), 
                  itemCount: filmsList.length
                  ),
               ),
            ],
          ),
        ),
      )
    );
  }
}