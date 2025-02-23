import 'package:flutter/material.dart';

import '../my_theme_data.dart';
import 'Text_Profile.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextProfile(text: ("Pick Avatar"), TextSize: 20,
        color: MyThemeData.commonColor,
          ),
      ),
      body: Column(),
    );
  }
}
