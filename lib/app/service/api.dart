import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/coca_model.dart';

class CocoaAPI {
  final list = [];
  final uri = Uri.parse('https://rest.imagineapps.co/cocoa-contracts');

  /// It takes the response from the API, decodes it, and returns a list of Cocoa objects
  ///
  /// Returns:
  ///   A list of Cocoa objects.
  Future<List<Cocoa>> fetchData() async {
    List<Cocoa> cocoas = [];
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodeCocoa = jsonDecode(response.body);

      decodeCocoa.forEach((key, value) {
        cocoas.add(Cocoa.fromJson(value));
      });
      print(cocoas);
      return cocoas;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
