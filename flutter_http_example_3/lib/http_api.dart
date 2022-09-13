import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'http_model.dart';

Future<Album> fetchAlbum() async {
  final res = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
    headers: {
      HttpHeaders.authorizationHeader: 'Basic your_api_token_here',
    },
  );
  final resJson = jsonDecode(res.body);

  return Album.fromJson(resJson);
}
