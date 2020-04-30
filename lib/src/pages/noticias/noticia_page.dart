import 'package:dofus_v0/src/providers/noticias_provider.dart';
import 'package:flutter/material.dart';

import 'package:dofus_v0/src/widgets/card_widget.dart';



class NoticiaPage extends StatelessWidget {

final noticiasProvider = new NoticiasProvider();
  
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

  Widget _swiperTarjetas( BuildContext context){

    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
           SizedBox(height: 40.0),
          FutureBuilder(
            future: noticiasProvider.getEnCines(),
            builder: (BuildContext context, AsyncSnapshot snapshot){

              if ( snapshot.hasData){
                return CardSwiper(noticias: snapshot.data);
              }else{
                return Center(child: CircularProgressIndicator());
              }
            }
          )
        ],
      ),
    );
 
  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Noticias', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('En esta parte encontraras todas las noticias y actualizaciones', style: TextStyle( fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }
}