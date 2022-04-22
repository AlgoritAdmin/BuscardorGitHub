import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';
import 'package:reto_dev_algorit/screens/screens.dart';
import 'package:reto_dev_algorit/themes/theme_data.dart';

void main() async {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SearchProvider(), lazy: false),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchProvider = Provider.of<SearchProvider>(context);
    return FutureBuilder(
      future: searchProvider.getDefaultPerson(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LoadingScreen();
        } else {
          return MyAppMain(searchProvider: searchProvider);
        }
      },
    );
  }
}

class MyAppMain extends StatelessWidget {
  const MyAppMain({
    Key? key,
    required this.searchProvider,
  }) : super(key: key);

  final SearchProvider searchProvider;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Git Search',
      theme: searchProvider.isDarkMode ? themeDataDark : themeDataLight,
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
