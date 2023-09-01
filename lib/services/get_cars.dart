import 'dart:convert';

import '../models/car.dart';
import 'package:http/http.dart' as http;

Future<List<Car>?> getCars(String category, {int limit = 10}) async {
  try {
    final headers = {
      'X-Api-Key': '7RHCqcjmWHu7eTuOYPnqJQ==sSGCLQtq3sMr38hE',
    };

    final params = {
      'make': category,
      'limit': limit.toString(),
    };

    final url = Uri.parse('https://api.api-ninjas.com/v1/cars')
        .replace(queryParameters: params);

    final res = await http.get(url, headers: headers);
    final status = res.statusCode;
    if (status != 200) throw Exception('http.get error: statusCode= $status');

    final body = json.decode(res.body);
    return body.map<Car>((e) => Car.fromJson(e)).toList();
  } catch (e) {
    // ignore: avoid_print
    print('Sehv var: $e');
  }
  return [];
}
