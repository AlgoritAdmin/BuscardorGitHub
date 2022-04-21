import 'package:flutter/material.dart';
import 'package:reto_dev_algorit/themes/theme_data.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      home: Scaffold(
        body: Center(
          child: Container(
            child: CircularProgressIndicator(
              color: Colors.white54,
            ),
          ),
        ),
      ),
    );
  }
}
