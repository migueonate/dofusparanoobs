import 'package:dofus_v0/src/models/mision_model.dart';
import 'package:dofus_v0/src/models/noticia_model.dart';
import 'package:dofus_v0/src/providers/misiones_provider.dart';
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
                _prerrequisitos( mision),
                _recompensas(mision),
                _posicion(mision),
                _descripcion( mision ),
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
          style: TextStyle(color: Colors.white, fontSize: 12.0),
        ),
        background: FadeInImage(
          image: NetworkImage( mision.headerImgUrl),
          placeholder: AssetImage('assets/original.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

   Widget _prerrequisitos( Mision mision ) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
      
      child: Column(
        children: <Widget>[
          Text('Prerequisitos:', style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, )),
          for (int i = 0; i < mision.prerequisite.length; i++) ...[
            Text(mision.prerequisite[i])
          ]
        
        ],
      )
    );

  }

  Widget  _descripcion(Mision mision) {

    var items = mision.contentText.length;
    var items2 = mision.contentImgUrl.length;

      return Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          
          child: Column(
            children: <Widget>[
              for (int i = 0; i < (items2); i++) ...[ 
                  Text(mision.contentText[i]),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: FadeInImage(placeholder: AssetImage('assets/original.gif'), image: NetworkImage(mision.contentImgUrl[i])),
                  )
              ],
              
              Text(mision.contentText[items-1], style: TextStyle(fontWeight: FontWeight.bold),)            
            ],
          )
        );
      
      }

  Widget _posicion(Mision mision) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          Text('Posicion Inicial:', style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, )),
          
          Text(mision.initialPos,
          textAlign: TextAlign.right,
          )
        ],
      )
    );
  }
      

  Widget _recompensas(Mision mision) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          Text('Recompensas:', style: TextStyle( fontSize: 15.0, fontWeight: FontWeight.bold, )),
          for (int i = 0; i < mision.rewards.length; i++) ...[
            Text(mision.rewards[i])
          ]
        ],
      )
    );
  }

}



