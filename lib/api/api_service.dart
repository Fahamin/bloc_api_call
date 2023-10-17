import 'dart:convert';


import 'package:http/http.dart' as http;

import '../model/model.dart';

class ApiService {
  Future<List<Model>> getData() async {
    List<Model> userList = [];

    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      userList = (json.decode(response.body) as List)
          .map((data) => Model.fromJson(data))
          .toList();
      return userList;
    } else {
      throw Exception('Error');
    }
  }
}
