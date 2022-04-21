import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';
import 'package:reto_dev_algorit/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final searchProvider = Provider.of<SearchProvider>(context);

    return Container(
      padding: EdgeInsets.all(size.height * 0.01),
      margin: EdgeInsets.symmetric(horizontal: size.height * 0.01),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(75, 106, 155, 0.5),
        borderRadius: BorderRadius.circular(size.height * 0.015),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: PhotoProfile(
              photo: searchProvider.user.avatarUrl,
            ),
          ),
          Expanded(child: InfoUser(user: searchProvider.user)),
        ],
      ),
    );
  }
}
