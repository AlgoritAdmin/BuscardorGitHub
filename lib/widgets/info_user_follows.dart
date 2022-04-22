import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';

class InfoUserFollows extends StatelessWidget {
  final int repos;
  final int followers;
  final int following;
  const InfoUserFollows(
      {Key? key,
      required this.repos,
      required this.followers,
      required this.following})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final searchProvider = Provider.of<SearchProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: double.infinity,
      decoration: BoxDecoration(
        color: searchProvider.isDarkMode
            ? Colors.black
            : Color.fromARGB(255, 31, 31, 41),
        borderRadius: BorderRadius.circular(size.height * 0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Boxi(
              title: 'Repos',
              subTitle: '$repos',
              size: size.height,
              darkMode: searchProvider.isDarkMode),
          Boxi(
              title: 'Followers',
              subTitle: '$followers',
              size: size.height,
              darkMode: searchProvider.isDarkMode),
          Boxi(
              title: 'Following',
              subTitle: '$following',
              size: size.height,
              darkMode: searchProvider.isDarkMode),
        ],
      ),
    );
  }
}

class Boxi extends StatelessWidget {
  final String title;
  final String subTitle;
  final double size;
  final bool darkMode;
  const Boxi({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.size,
    required this.darkMode,
  }) : super(key: key);
  //widget info repos, followers y following
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: size * 0.015,
            color: darkMode ? Color.fromARGB(167, 255, 255, 255) : null,
          ),
        ),
        SizedBox(
          height: size * 0.005,
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: size * 0.03,
            fontWeight: FontWeight.bold,
            color: darkMode ? Color.fromARGB(167, 255, 255, 255) : null,
          ),
        ),
      ],
    );
  }
}
