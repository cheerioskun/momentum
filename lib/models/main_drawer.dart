import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Hero(
                tag: 'hero',
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 100.0,
                    child: Image.asset(
                      'assets/graphics/hero.png',
                      color: Color.fromRGBO(255, 255, 255, 0.4),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                ),
              )
            ),
            
          ],
        ));
  }
}
