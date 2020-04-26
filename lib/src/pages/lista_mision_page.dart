import 'package:dofus_v0/src/models/mision_model.dart';
import 'package:dofus_v0/src/providers/misiones_provider.dart';
import 'package:dofus_v0/src/providers/noticias_provider.dart';
import 'package:dofus_v0/src/widgets/card_widget.dart';
import 'package:dofus_v0/src/widgets/list_widget.dart';

import 'package:flutter/material.dart';


import 'dart:ui';

class ListaMisionPage extends StatelessWidget {

  final misionesProvider = new MisionesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(          
      body: Container(
        child: Column(
          children: <Widget>[
            _titulos(),
            _swiperTarjetas(context)
          ],
        ),
      ),
        );
  }


  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Lista de Misiones', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold, ), textAlign: TextAlign.center),
            SizedBox( height: 10.0 ),
          ],
        ),
      ),
    );

  }

Widget _swiperTarjetas( BuildContext context){

    return Container(
      child: Column(
        children: <Widget>[
          FutureBuilder(
            future: misionesProvider.getMisiones(),
            builder: (BuildContext context, AsyncSnapshot snapshot){

              if ( snapshot.hasData){
                return ListMision(misiones: snapshot.data);
              }else{
                return Center(child: CircularProgressIndicator());
              }
            }
          )
        ],
      ),
    );
 
  }

}