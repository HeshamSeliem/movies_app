import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hello home screen ", style: Theme.of(context).textTheme.bodyLarge,),
      ),
    );
  }
}