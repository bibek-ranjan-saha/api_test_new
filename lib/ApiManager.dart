import 'dart:convert';
import 'dart:core';

import 'package:api_test/Data.dart';
import 'package:http/http.dart' as http;


class API_manager {
  Future<WelcomeNode> getData() async {
    var imgModel = null;
    var sir_key = '1bb15a8093msh46b8910da0c00afp1aee1fjsna7c548305038';
    var my_key = '0a92dbaff2msh5b565238bfdb6eap133fedjsn0aae1ecbbd1b';
    var tapaswini_key = '63e23aad82mshdb73329d79ddb89p1a4f20jsn10afac25227f';
    var gagan_key = 'c8ed4b06a8msh7d4b735bc4480cap18a401jsnb48d06698728';
    var client = http.Client();
    var responce = await client.get(Uri.parse("https://instagram40.p.rapidapi.com/account-feed?username=bibek_saha"), headers: {
      'x-rapidapi-key': tapaswini_key,
      'x-rapidapi-host': 'instagram40.p.rapidapi.com'
    });

    try {
      if (responce.statusCode == 200) {
        var responcejson = responce.body;

        var jsonmap = json.decode(responcejson);
        print(responcejson);

        imgModel = WelcomeNode.fromJson(jsonmap);
      }
    } catch (Exception) {
      print("not got responce"+Exception.toString());
    }

    return imgModel;
  }
}
