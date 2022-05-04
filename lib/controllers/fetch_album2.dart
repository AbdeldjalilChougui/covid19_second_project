import 'dart:convert';

import 'package:covid19/album2_model.dart';
import 'package:http/http.dart' as http;

Future<Album2> fetchAlbum2(selectedCountry) async {
  final responses = await http
      .get('https://disease.sh/v3/covid-19/countries/${selectedCountry}');

  if (responses.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album2.fromJson(json.decode(responses.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}