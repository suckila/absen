import 'dart:convert';
import '../models/login_model.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  String _baseUrl = 'https://reqres.in/';

  Future signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post('${_baseUrl}api/login');
      if (response.statusCode == 200) {
        print(response.data);
        Iterable it = jsonDecode(response.data);
        List<LoginModel> blog = it.map((e) => LoginModel.fromJson(e)).toList();
        return blog;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
