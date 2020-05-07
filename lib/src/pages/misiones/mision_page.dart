import 'package:flutter/material.dart';


import 'dart:ui';

class MisionPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(context)
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
            Text('Misiones', style: TextStyle( fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('En esta parte encontraras todas las misiones del juego', style: TextStyle( fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

  Widget _botonesRedondeados( BuildContext context) {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado( context, Colors.black, 'assets/Icono_Logros.png', 'Principales', 'listalogrosprincipales' ),
            _crearBotonRedondeado( context, Colors.black, 'assets/Dofus.png', 'Los Dofus', 'misionesdofus' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( context, Colors.black, 'assets/Eventos.jpg', 'Eventos', 'lista'  ),
            _crearBotonRedondeado( context, Colors.black, 'assets/Logo_Bonta.jpg', 'Almanax', 'lista'  ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( context, Colors.black, 'assets/Logo_Bonta.jpg', 'Bonta', 'lista'  ),
            _crearBotonRedondeado( context, Colors.black, 'assets/Logo_Brakmar.png', 'Brakmar', 'lista'  ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( context,Colors.black, 'assets/Dimensiones.jpg', 'Dimensiones Divinas', 'lista'  ),
            _crearBotonRedondeado( context,Colors.black, 'assets/Actitudes.jpg', 'Actitudes', 'lista' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado( context,Colors.black, 'assets/Aviso.jpg', 'Busqueda y Captura', 'lista' ),
            _crearBotonRedondeado( context,Colors.black, 'assets/Complementaria.png', 'Complementarias', 'lista'  ),
          ]
        )
      ],
      
    );

  }

  Widget _crearBotonRedondeado( BuildContext context, color, String icono, String texto, String url ) {
 
    final boton = ClipRect(       
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(134,255,202,100), //255,236,157,100  255,236,157
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[             
              SizedBox( height: 5.0 ),
              Container(
                child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: FadeInImage(
                    placeholder: AssetImage('assets/loading.gif'), 
                    image: AssetImage(icono),
                    fit: BoxFit.cover,
                    // width: 130.0,       
                  ),
                ),
                padding: EdgeInsets.all(8.0),
              ),
              Text( texto , style: TextStyle( color: color, fontWeight: FontWeight.bold)),
              SizedBox( height: 5.0 ),           
            ],
          ),
        ),
      );

      return GestureDetector(
        child: boton,
        onTap: (){
          Navigator.pushNamed(context, url);
        },
      );
  }


}