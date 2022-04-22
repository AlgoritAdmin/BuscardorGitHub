import 'package:flutter/material.dart';
import 'package:reto_dev_algorit/themes/theme_data.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeDataLight,
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}
