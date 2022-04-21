import 'package:flutter/material.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';

class DarkModeWidget extends StatelessWidget {
  const DarkModeWidget({
    Key? key,
    required this.searchProvider,
  }) : super(key: key);

  final SearchProvider searchProvider;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        'Dark Mode:',
        style: TextStyle(
          color: searchProvider.isDarkMode ? Colors.white : null,
        ),
      ),
      value: searchProvider.isDarkMode,
      onChanged: (value) => searchProvider.isDarkMode = value,
    );
  }
}
