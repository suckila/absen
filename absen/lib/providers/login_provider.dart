// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import '../services/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/utils.dart';

// class LogInProvider extends ChangeNotifier {
//   final ApiServices service = ApiServices();
//   late SharedPreferences loginData;
//   LogInProvider? users;

//   MyState myState = MyState.initial;
//   Future signIn({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       myState = MyState.loading;
//       notifyListeners();
//       loginData = await SharedPreferences.getInstance();

//       final users = await service.signIn(
//         email: email,
//         password: password,
//       );
//     } catch (e) {
//       print(e);
//     }

//     myState = MyState.failed;
//     notifyListeners();
//   }
// }
