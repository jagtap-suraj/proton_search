import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:proton_search/config/api_json.dart';

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData({required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(' ') ? queryTerm.split(' ').join('%20') : queryTerm;
        // example of above: 'hello world' -> 'hello%20world'

        await dotenv.load(fileName: ".env");
        final apiKey = dotenv.env['GOOGLE_SEARCH_API_KEY'];
        final contextKey = dotenv.env['GOOGLE_SEARCH_CONTEXT_KEY'];

        final response = await http.get(
          Uri.parse('https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start'),
        );

        if (response.statusCode == 200) {
          final jsonData = response.body;
          final respData = json.decode(jsonData);
          return respData;
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(
          e.toString(),
        );
      }
    }
    return apiResponse;
  }
}
