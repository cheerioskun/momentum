import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key, this.logoutCallback}) : super(key: key);
  final VoidCallback logoutCallback;
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

            DrawerButton(icon: Icons.mail, title: "Dashboard", tapCallback: () => {},),
            DrawerButton(icon: Icons.mail, title: "Dashboard", tapCallback: () => {},),
            DrawerButton(icon: Icons.mail, title: "Dashboard", tapCallback: () => {},),
            DrawerButton(icon: Icons.mail, title: "Dashboard", tapCallback: () => {},),
            DrawerButton(icon: Icons.mail, title: "Dashboard", tapCallback: () => {},),
            Expanded(child: DrawerButton(icon: Icons.exit_to_app, title: "Logout", tapCallback: logoutCallback,),)
          ],
        ));
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton({Key key, this.icon, this.title, this.tapCallback}) : super(key: key);
  final IconData icon;
  final String title;
  final dynamic tapCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
      onTap: tapCallback,
    );

    // return Container(
    //   child: SizedBox(
    //     height: 40,
    //     child: Row(children: <Widget>[
    //       Padding(
    //         padding: const EdgeInsets.only(right: 15.0),
    //         child: Icon(icon, ),
    //       ),
    //       Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
    //       ],
    //       mainAxisAlignment: MainAxisAlignment.center,
    //     )
    //   ),
    // );
  }
}