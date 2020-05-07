import 'package:dofus_v0/src/models/mision_model.dart';
import 'package:flutter/material.dart';


class ListMision extends StatelessWidget {

  final List<Mision> misiones;


  ListMision({@required this.misiones});

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      // padding: EdgeInsets.only(top: 50.0),
      height: _screenSize.height * 0.7,
      child: ListView(
        children: _lista(context),
      ),
    );

  }

 List<Widget> _lista( BuildContext context) {

   return misiones.map( (mision) {

      final tarjeta = ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(mision.title),
      );

      return GestureDetector(
      child: tarjeta ,
      onTap: (){ 

        Navigator.pushNamed(context, 'misiondetalle', arguments: mision);
        
      },
    );

    }).toList();


 }
}