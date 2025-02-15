import 'package:flutter/material.dart';

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hello browse screen ", style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}