// import 'package:shared_preferences/shared_preferences.dart';

// class SharedService {
//   final key = 'token';
//   Future<String?> getToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getString(key);
//   }

//   Future<bool> saveToken(String token) async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.setString(key, token);
//   }

//   Future<bool> deleteToken() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.remove(key);
//   }
// }
