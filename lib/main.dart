import 'package:dofus_v0/src/pages/lista_mision_page.dart';
import 'package:dofus_v0/src/pages/menu_page.dart';
import 'package:dofus_v0/src/pages/mision_detalle.dart';
import 'package:dofus_v0/src/pages/noticia_detalle.dart';
import 'package:flutter/material.dart';

 
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
        'lista'  : (BuildContext context) => ListaMisionPage(),
        'misiondetalle'  : (BuildContext context) => MisionDetalle(),
      },
    );
  }
}