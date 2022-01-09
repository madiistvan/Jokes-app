import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/JsonJokes.dart';





class JokesAPI {
  Future<List<JsonJokes>> fetchJokes(String type, int num) async {
    List<JsonJokes> jsonJokes=List.empty(growable: true);
    var queryParameters = {
      'param1': 'type=blacklistFlags=nsfw,religious,political,racist,sexist,explicit&type=twopart',
    };
    while(jsonJokes.length<num) {
      final response =
      await http.get(
          Uri.https('v2.jokeapi.dev', 'joke/' + type, queryParameters));
      if (response.statusCode == 200) {
        var tmp=JsonJokes.fromJson(jsonDecode(response.body));
        if(tmp.setup==null)continue;
        jsonJokes.add(tmp);
      }
    }
    return jsonJokes.toList();
  }
}