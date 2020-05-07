import 'package:dofus_v0/src/pages/misiones/principales/ciudadano_modelo.dart';
import 'package:flutter/material.dart';

import 'package:dofus_v0/src/pages/menu_page.dart';

import 'package:dofus_v0/src/pages/misiones/principales/logros_listado.dart';
import 'package:dofus_v0/src/pages/misiones/principales/misiones_por_logros.dart';
import 'package:dofus_v0/src/pages/misiones/mision_dofus.dart';
import 'package:dofus_v0/src/pages/misiones/mision_detalle.dart';
import 'package:dofus_v0/src/pages/noticias/noticia_detalle.dart';


 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dosfus Para Noobs',
      initialRoute: '/',
      routes: {
        '/'  : (BuildContext context) => MenuPage(),
        'detalle'  : (BuildContext context) => NoticiaDetalle(),
        'listalogrosprincipales'  : (BuildContext context) => ListaLogroPrincipalPage(),
        'misiondetalle'  : (BuildContext context) => MisionDetalle(),
        'misionesdofus'  : (BuildContext context) => MisionesDofusPage(),
        // RUTAS para la lista de misiones  PRINCIPALES
        'caminoalaaventura'  : (BuildContext context) => ListaMisionPage(),
        'ciudadanomodelo'  : (BuildContext context) => CiudadanoModeloPage(),
      },
    );
  }
}