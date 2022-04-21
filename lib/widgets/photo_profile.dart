import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  final String? photo;
  const PhotoProfile({Key? key, this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipOval(
      child: Image.network(
        this.photo ?? 'https://pbs.twimg.com/media/Eu7kZRRWgAMJjj8.png',
        width: size.height < 500 ? size.width * 0.18 : size.height * 0.14,
      ),
    );
  }
}
