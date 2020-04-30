import 'dart:convert';


import 'package:dio/dio.dart';
import 'package:dofus_v0/src/models/mision_model.dart';




class MisionesProvider {
  Future<List<Mision>> getMisiones() async {
    try {
      Dio dio = new Dio();
      List<Mision> datos = [];

      dio.options.baseUrl =
          "https://dofusparanoobs.herokuapp.com"; //url del servidor
      dio.options.connectTimeout = 5000; // 5 segundos
      dio.options.receiveTimeout = 5000; // 3 segundos

      Response misiones =
          await dio.get("/api/mision/show"); // configuracion del endpoint

      var misionesMap = misiones.data; // Accedemos al manejo del json retornado

      misionesMap["misions"].forEach((dataMap) async {
        List<String> prerequisite = [];
        dataMap["prerequisite"].forEach((dataInfo) async {
          prerequisite.add(dataInfo);
        });
        List<String> rewards = [];
        dataMap["rewards"].forEach((dataInfo) async {
          rewards.add(dataInfo);
        });
        List<String> contentText = [];
        dataMap["contentText"].forEach((dataInfo) async {
          contentText.add(dataInfo);
        });
        List<String> contentImgUrl = [];
        dataMap["contentImgUrl"].forEach((dataInfo) async {
          contentImgUrl.add(dataInfo);
        });
        Mision _mision = Mision.map(
            dataMap, prerequisite, rewards, contentText, contentImgUrl);
        datos.add(_mision);
      });

      //print(datos[0].contentImgUrl);

      return datos;
      
    } catch (e) {
      print(e);
    }
  }
}