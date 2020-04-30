import 'package:flutter/material.dart';

import 'package:dofus_v0/src/providers/misiones_provider.dart';

import 'dart:ui';



class MisionesDofusPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(          
      body: Container(
        child: Column(
          children: <Widget>[
            _titulos(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Disponible muy pronto...', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold, ),),
            SizedBox( height: 10.0 ),
          ],
        ),
      ),
    );

  }



}