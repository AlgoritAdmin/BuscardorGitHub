// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reto_dev_algorit/models/user_git.dart';
import 'package:reto_dev_algorit/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart' as launcher_url;

class InfoUser extends StatelessWidget {
  final UserGit user;
  const InfoUser({Key? key, required this.user}) : super(key: key);
  //widget to show info user
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          children: [
            Text(
              user.name ?? 'User not found',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size * 0.025,
                color: user.name == null ? Colors.red : null,
              ),
            ),
            SizedBox(width: size),
            Text(
              'Joined ${user.createdAt!.day} ${user.months[user.createdAt!.month]} ${user.createdAt!.year}',
              style: TextStyle(fontSize: size * 0.014),
            ),
          ],
        ),
        SizedBox(height: size * 0.005),
        Text('@${user.login!}', style: TextStyle(color: Colors.blue)),
        SizedBox(height: size * 0.04),
        Text(user.bio!),
        SizedBox(height: size * 0.04),
        InfoUserFollows(
            repos: user.publicRepos,
            followers: user.followers,
            following: user.following),
        SizedBox(height: size * 0.04),
        InfoSocialNetworks(size: size, user: user),
        SizedBox(width: size * 0.02),
      ],
    );
  }
}

class InfoSocialNetworks extends StatelessWidget {
  final UserGit user;
  const InfoSocialNetworks({
    Key? key,
    required this.size,
    required this.user,
  }) : super(key: key);

  final double size;
  final percent = 0.013;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Contact(
              icon: Icons.location_pin,
              text: user.location!,
              size: size * percent,
            ),
            SizedBox(height: size * 0.01),
            Contact(
              icon: Icons.insert_link_outlined,
              text: user.blog!,
              size: size * percent,
            ),
          ],
        ),
        SizedBox(height: size * 0.06),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Contact(
              icon: Icons.phone_iphone_sharp,
              text: user.twitterUsername,
              size: size * percent,
            ),
            SizedBox(height: size * 0.01),
            Contact(
              icon: Icons.business,
              text: user.company!,
              size: size * percent,
            ),
          ],
        ),
      ],
    );
  }
}

class Contact extends StatelessWidget {
  final IconData icon;
  final String text;
  final double size;
  const Contact(
      {Key? key, required this.icon, required this.text, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: size, color: Colors.white),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () => launchUrl(text),
          // ignore: sized_box_for_whitespace
          child: Container(
            width: size / 0.013 * 0.22,
            child: Text(
              text,
              style: TextStyle(fontSize: size),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  //laucnh url
  void launchUrl(String text) async {
    if (await launcher_url.canLaunch(text)) {
      await launcher_url.launch(text);
    }
  }
}
