import 'dart:convert';

import 'package:country_app_indra/countries/data/models/country_dto.dart';
import 'package:country_app_indra/countries/data/utils/country_api_url.dart';
import 'package:http/http.dart' as http;

class CountryApiRespository {
  static Future<CountryDto?> getCountryObject(String nombre) async {
    String urlString = CountryApiUrls.urlGetCountry(nombre);

    Uri url = Uri.parse(urlString);

    CountryDto? countryDto;
    try {
      await http.get(url).then((http.Response response) {
        print(response.body);

        final body = response.body;
        final bodyDecode = jsonDecode(body);
        List<dynamic> myResponse = bodyDecode;
        print(myResponse.first);
        countryDto = CountryDto.fromJson(myResponse.first);
      });
    } catch (e) {
      print(e);
    }
    return countryDto;
  }
}
