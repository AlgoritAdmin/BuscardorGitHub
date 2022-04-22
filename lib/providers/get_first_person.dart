// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:reto_dev_algorit/models/user_git.dart';

class GetFirstPerson {
  static const String _baseUrl = 'api.github.com';
  static UserGit user = UserGit();

  // ignore: duplicate_ignore
  static Future<bool> getDefaultPerson(String name) async {
    //await Future.delayed(Duration(seconds: 3));

    final url = Uri.https(_baseUrl, '/users/$name');
    final response = await http.get(url);

    final responseDecoded = UserGit.fromJson(response.body);
    user = responseDecoded;
    // ignore: avoid_print
    print('First Person');
    print(user.name);
    return true;
  }
}
