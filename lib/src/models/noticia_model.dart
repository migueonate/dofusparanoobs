import 'package:flutter/cupertino.dart';

class Noticias {

  List<Noticia> items = new List();

  Noticias();

  Noticias.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final noticia = new Noticia.fromJsonMap(item);
      items.add( noticia );
    }

  }

}



class Noticia {
  int id;
  String createDate;
  String title;
  String content;
  String imgUrl;
  

  Noticia({
   this.id,
   this.createDate,
   this.title,
   this.content,
   this.imgUrl
  });

  Noticia.fromJsonMap( Map<String, dynamic> json ) {

    id               = json['id'];
    createDate       = json['createDate'];
    title            = json['title'];
    content          = json['content'];
    imgUrl           = json['imgUrl'];

  }

  // getPosterImg(){

  //   if( imgUrl == null){
  //     return ''; //imagen de fondo por si no encuntra nada
  //   }else{
  //     return imgUrl;
  //   }
  // }


}