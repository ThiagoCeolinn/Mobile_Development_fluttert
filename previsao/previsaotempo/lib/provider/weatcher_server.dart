import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Future<Map> getData() async {
  var url = Uri.parse("https://api.hgbrasil.com/weather?woeid=455823");
  http.Response response = await http.get(url);

  return json.decode(response.body);
}
