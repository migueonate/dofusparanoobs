import 'package:dofus_v0/src/models/noticia_model.dart';
import 'package:flutter/material.dart';

class NoticiaDetalle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final Noticia noticia = ModalRoute.of(context).settings.arguments;
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppbar( noticia ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox( height: 10.0 ),
                _descripcion( noticia ),
              ]
  
            ),
          )
        ],
      )
    );
  }

  Widget _crearAppbar( Noticia noticia ){

    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
          width: 250.0,
          child: Text(
            noticia.title,
            style: TextStyle(color: Colors.white, fontSize: 11.0),textAlign: TextAlign.center,
          ),
        ),
        background: FadeInImage(
          image: NetworkImage( noticia.imgUrl),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(microseconds: 150),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

   Widget _descripcion( Noticia pelicula ) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Text(
        pelicula.content,
        textAlign: TextAlign.justify,
      ),
    );

  }

  

}
