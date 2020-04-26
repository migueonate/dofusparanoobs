import 'package:dofus_v0/src/models/mision_model.dart';
import 'package:dofus_v0/src/models/noticia_model.dart';
import 'package:flutter/material.dart';

class MisionDetalle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final Mision mision = ModalRoute.of(context).settings.arguments;
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppbar( mision ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox( height: 10.0 ),
                _descripcion( mision ), //Contenido 1
              ]
  
            ),
          )
        ],
      )
    );
  }

  Widget _crearAppbar( Mision mision ){

    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          mision.title,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          image: NetworkImage( mision.headerImgUrl),
          placeholder: AssetImage('assets/original.pdf'),
          fadeInDuration: Duration(microseconds: 150),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

   Widget _descripcion( Mision mision ) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        mision.prerequisite[0],
        textAlign: TextAlign.justify,
      ),
    );

  }

  

}
