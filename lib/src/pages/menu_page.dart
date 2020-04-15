import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

import 'package:dofus_v0/src/pages/mision_page.dart';
import 'package:dofus_v0/src/pages/noticia_page.dart';
import 'package:dofus_v0/src/pages/mazmorra_page.dart';
import 'package:dofus_v0/src/pages/tutorial_page.dart';

class MenuPage extends StatefulWidget {

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {


    //Noticias
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Noticias',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        NoticiaPage()));

    //Misiones
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Misiones',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        MisionPage()));

    //Tutoriales
      items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Tutoriales',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        TutorialPage()));

    //Mazmorras
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Mazmorras',
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        MazmorraPage()));
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.white,
      screens: items,
            typeOpen: TypeOpen.FROM_LEFT,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
        //    slidePercent: 80.0,
        //    verticalScalePercent: 80.0, 
        //    contentCornerRadius: 10.0,
            iconMenuAppBar: Icon(Icons.menu,color: Colors.black,),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
        //    styleAutoTittleName: TextStyle(color: Colors.red),
            actionsAppBar: <Widget>[
              IconButton(
                padding: EdgeInsets.only(right: 10.0),
                icon: Icon(Icons.search), 
                onPressed: (){},
                color: Colors.black,)
            ],
        //    backgroundColorContent: Colors.blue,
            elevationAppBar: 1,
            tittleAppBar: Container(
              child: Image(image: AssetImage('assets/Logo2.png'), 
              fit: BoxFit.cover), 
              width: 200.0,),
        //    enableShadowItensMenu: true,
        //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}