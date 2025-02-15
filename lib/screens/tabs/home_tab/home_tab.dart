import 'package:flutter/material.dart';
import 'package:movies_app/models/film_model.dart';
import 'package:movies_app/screens/tabs/home_tab/horisentalListWidget.dart';

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
                    return Horisentallistwidget(
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
               Text("Action"),
               SizedBox(
                height: 180,
                 child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Horisentallistwidget(
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