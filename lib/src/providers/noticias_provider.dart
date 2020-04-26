import 'dart:convert';

import 'package:dofus_v0/src/models/noticia_model.dart';

import 'package:http/http.dart' as http;



class NoticiasProvider{

  //String _apiKey = '3b51d74585cd4634d42865c1eb69947c';
  String _url    = 'dofusparanoobs.herokuapp.com';
  //String _language = 'es-ES';



  Future<List<Noticia>> getEnCines() async{

    final url = Uri.https(_url, 'api/news/show');

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final noticias = new Noticias.fromJsonList(decodedData['news']);

    return noticias.items;
  }

}

