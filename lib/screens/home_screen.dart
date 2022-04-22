import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';
import 'package:reto_dev_algorit/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //default widget
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    final searchProvider = Provider.of<SearchProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size * 0.05),
              const SearchBar(),
              const SizedBox(height: 30),
              const UserCard(),
              DarkModeWidget(searchProvider: searchProvider),
            ],
          ),
        ),
      ),
    );
  }
}
