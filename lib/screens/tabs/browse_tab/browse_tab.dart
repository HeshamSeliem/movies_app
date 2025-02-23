import 'package:flutter/material.dart';
import 'package:movies_app/screens/tabs/home_tab/horizontalListWidget.dart';
import 'package:movies_app/serveces/api_manager.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: ApiManager.getMoviesList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error"));
        } else {
          var data = snapshot.data?.data?.movies ?? [];
          return Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
                childAspectRatio: 2/3, // Aspect ratio of grid items
              ),
              itemCount: data.length, // Total items
              itemBuilder: (context, index) {
                return Hhorizontallistwidget(
                    movie: data[index],
                    containerHeight: 350,
                    containerWidth: 230);
              },
            ),
          );
        }
      },
    ));
  }
}
