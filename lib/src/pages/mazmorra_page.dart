import 'package:flutter/material.dart';


import 'dart:ui';

class MazmorraPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos()
              ],
            ),
          )
        ],
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
            Text('Mazmorras', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('En esta parte encontraras todas la informacion sobre las mazmorras', style: TextStyle( fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

}