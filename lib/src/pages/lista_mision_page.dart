import 'package:dofus_v0/src/models/mision_model.dart';
import 'package:flutter/material.dart';


import 'dart:ui';

class ListaMisionPage extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Icon(Icons.arrow_back),
        body:ListView(
              children: countries.map(_buildItem).toList(),
    )
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


  Widget _buildItem(Mision mision) {
  return new ListTile(
      title: new Text(mision.name),
      subtitle: new Text('Capital: ${mision.capital}'),
      leading: new Icon(Icons.map),
      onTap: (){
        print(mision.name);
      },
  );

}

}