import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:reto_dev_algorit/models/user_git.dart';

class SearchProvider extends ChangeNotifier {
  bool _isDarkMode = false;
  bool isLoading = false;
  final String _baseUrl = 'api.github.com';
  UserGit user = UserGit();
  String typing = 'Jorge-RA';

  bool get isDarkMode => _isDarkMode;

  set isDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  //function to get users
  Future<void> getPerson() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));

    final url = Uri.https(_baseUrl, '/users/$typing');
    final response = await http.get(url, headers: {
      'Authorization': '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',
    });
    final responseDecoded = UserGit.fromJson(response.body);
    user = responseDecoded;
    isLoading = false;
    notifyListeners();
  }

  //function to get default users
  Future<bool> getDefaultPerson() async {
    //await Future.delayed(Duration(seconds: 3));

    final url = Uri.https(_baseUrl, '/users/$typing');
    final response = await http.get(url, headers: {
      'Authorization': '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',
    });

    final responseDecoded = UserGit.fromJson(response.body);

    user = responseDecoded;
    return true;
  }
}
