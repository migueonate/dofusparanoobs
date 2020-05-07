import 'package:flutter/material.dart';

import 'dart:ui';



class CiudadanoModeloPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
              child: Image(image: AssetImage('assets/Logo2.png'), 
              fit: BoxFit.cover), 
              width: 200.0),
              backgroundColor: Colors.white,
        ),         
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