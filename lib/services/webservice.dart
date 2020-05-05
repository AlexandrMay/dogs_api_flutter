import 'dart:convert';

import 'package:dogs_api/model/dogs.dart';
import 'package:http/http.dart' as http;

class WebService {

  Future<List<Dogs>> fetchDogs() async {
    String url = "https://raw.githubusercontent.com/DevTides/DogsApi/master/dogs.json";
    final response = await http.get(url);
    if(response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result;
      print(list);
      return list.map((dog) => Dogs.fromJSON(dog)).toList();
    } else {
      throw Exception ("Failed to get dogs");
    }
  }


}