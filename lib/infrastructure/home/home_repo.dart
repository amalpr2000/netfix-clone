import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netfilx_clone/core/api.dart';
import 'package:netfilx_clone/domain/home/modal/tile_api/result.dart';
import 'package:netfilx_clone/domain/home/modal/tile_api/tile_api.dart';

Future<List<Result>> getTop10() async {
  final response = await http.get(Uri.parse(baseUrl + '/tv/popular' + apiKey));
  final jsonData = jsonDecode(response.body);
  final data = TileApi.fromJson(jsonData);
  return data.results!;
}
