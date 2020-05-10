
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key, this.title, this.difficulty}) : super(key: key);
  final String title;
  final int difficulty;
  @override
  Widget build(BuildContext context) {
    Color colorToPaint;
    if(difficulty == null || difficulty < 1200){
      colorToPaint = Color.fromRGBO(50, 200, 50, 1.0);
    }else if(difficulty < 1700){
      colorToPaint = Color.fromRGBO(150, 50, 50, 1.0);
    }else{
      colorToPaint = Color.fromRGBO(200, 20, 10, 1.0);
    }
    return Container(
      color: colorToPaint,
      child: Text((title == null?"":title), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
    );
  }
}