import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_api/model.dart';

class ApiService {
  Future<PostAPi?> getPostApi(String name, String job) async {
    try {
      var url = Uri.parse("https://reqres.in/api/users");
      var response = await http.post(url, body: {
        "name": name,
        "job": job,
      });

      if (response.statusCode == 201) {
        PostAPi model = PostAPi.fromJson(jsonDecode(response.body));
        return model;
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }
}



