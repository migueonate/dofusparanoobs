import 'package:dofus_v0/src/models/noticia_model.dart';
import 'package:flutter/material.dart';



class CardSwiper extends StatelessWidget {

  final List<Noticia> noticias;

  CardSwiper({@required this.noticias});


  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Container(
      // padding: EdgeInsets.only(top: 50.0),
      height: _screenSize.height * 0.6,
      child: PageView(
        pageSnapping: false,
        controller: PageController(
          initialPage: 1,
          viewportFraction: 0.6,
        ),
        children: _tarjetas(context),
      ),
    );

  }

  List<Widget> _tarjetas(BuildContext context) {

    return noticias.map( (noticia) {

      final tarjeta = Container(
        margin: EdgeInsets.only(right: 7.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(placeholder: AssetImage('assets/original.gif'), 
              image: NetworkImage(noticia.getPosterImg()),
              fit: BoxFit.cover,
              height: 300.0,        
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              noticia.title,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      );

      return GestureDetector(
      child: tarjeta ,
      onTap: (){ 

        Navigator.pushNamed(context, 'detalle', arguments: noticia);
      },
    );

    }).toList();

    
  }

  
}