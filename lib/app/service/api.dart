import 'package:http/http.dart' as http;

class CocoaAPI {
  final list = [];
  final uri = Uri.parse('https://rest.imagineapps.co/cocoa-contracts');

  Future fetchData() async {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // print(response.body);
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
