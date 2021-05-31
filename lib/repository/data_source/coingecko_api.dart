import 'dart:convert';

import 'package:http/http.dart' as http;

class CoingeckoApi {
  static const _api = 'api.coingecko.com';

  static Future<List<Map<String, dynamic>>> getCoinsMarkets() async {
    const list =
        // ignore: lines_longer_than_80_chars
        'bitcoin,ethereum,tether,cardano,binancecoin,ripple,dogecoin,usd-coin,polkadot,internet-computer,uniswap';
    final response = await http.get(Uri.https(
        _api, '/api/v3/coins/markets', {'vs_currency': 'usd', 'ids': list}));
    if (response.statusCode == 200) {
      // ignore: avoid_dynamic_calls
      var parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed;
    } else {
      throw Exception('Failed to load coins');
    }
  }
}
