import 'package:flutter/material.dart';


class ListaLogroPrincipalPage extends StatelessWidget {

  
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
        child: _listaLogros(context, Icons.arrow_right),)
    );
  }


Widget _listaLogros( BuildContext context, IconData icono){

    return ListView(
      children: <Widget>[
          Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox( height: 10.0 ),
            Text('Que comience tu nueva aventura por el mundo de los doce...', style: TextStyle( fontSize: 18.0 , fontWeight: FontWeight.bold)),
          ],
        ),
      ),
          ListTile(
            title: Text('En camino a la aventura.'),
            leading: Icon(icono),
            onTap: (){ Navigator.pushNamed(context, 'caminoalaaventura');},
           ),
          ListTile(
            title: Text('Un ciudadano modelo.'),
            leading: Icon(icono),
            onTap: (){ Navigator.pushNamed(context, 'ciudadanomodelo');}
           ),
          // ListTile(
          //   title: Text('¿Pero dónde están los dofus?'),
          //   leading: Icon(icono),
          //   onTap: (){ Navigator.pushNamed(context, 'lista');}
          // ),
          // ListTile(
          //   title: Text('Verde esmeralda.'),
          //   leading: Icon(icono),
          //   onTap: (){ Navigator.pushNamed(context, 'lista');}
          // ),
          // ListTile(
          //   title: Text('De color morado oscuro.'),
          //   leading: Icon(icono),
          //   onTap: (){ Navigator.pushNamed(context, 'lista');}
          // ),

      ],
    );
    
    
     
 
  }

}