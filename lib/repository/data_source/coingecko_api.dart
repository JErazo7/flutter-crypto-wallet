import 'dart:convert';

import 'package:http/http.dart' as http;

class CoingeckoApi {
  static final _api = 'api.coingecko.com';

  static Future<List<Map<String, dynamic>>> getCoinsMarkets() async {
    final response = await http
        .get(Uri.https(_api, '/api/v3/coins/markets', {'vs_currency': 'usd'}));
    if (response.statusCode == 200) {
      var parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed;
    } else {
      throw Exception('Failed to load coins');
    }
  }
}
