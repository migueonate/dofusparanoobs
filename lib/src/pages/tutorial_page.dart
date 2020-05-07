import 'package:flutter/material.dart';


import 'dart:ui';

class TutorialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
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
            Text('Tutoriales', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('En esta parte encontraras todas los tutoriales', style: TextStyle( fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

  Widget _botonesRedondeados() {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( Colors.black, 'assets/Camino.jpg', 'Caminos Hacia...' ),
            _crearBotonRedondeado( Colors.black, 'assets/XP.jpg', 'Tabla de Experiencia' ),
          ]
        )
      ],
    );

  }

  Widget _crearBotonRedondeado( Color color, String icono, String texto ) {
 
 
    return ClipRect(       
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(134,255,202,100),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[             
              SizedBox( height: 5.0 ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FadeInImage(
                    placeholder: AssetImage('assets/original.gif'), 
                    image: AssetImage(icono),
                    fit: BoxFit.cover,
                    // width: 130.0,       
                  ),
                ),
                padding: EdgeInsets.all(8.0),
              ),
              Text( texto , style: TextStyle( color: color, fontWeight: FontWeight.bold)),
              SizedBox( height: 5.0 )
              
            ],
          ),
 
        ),
      );
  }


}