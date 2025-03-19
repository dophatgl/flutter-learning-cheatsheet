//source https://docs.flutter.dev/cookbook/networking/background-parsing
import 'dart:convert';

import 'package:http/http.dart';
import 'package:json_homework/photo.dart';

class DataManager {
  List<Photo> parsePhotos(String responseBody) {
    final parsed =
        (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();
    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }

  Future<List<Photo>> fetchPhotos(Client client) async {
    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    return parsePhotos(response.body);
  }
}
