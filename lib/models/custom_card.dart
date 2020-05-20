
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key, this.title, this.problemId, this.judge, this.description, this.difficulty, this.acCallback, this.deleteCallback}) : super(key: key);
  final String title;
  final String problemId;
  final String judge;
  final String description;
  final dynamic acCallback;
  final dynamic deleteCallback;
  final int difficulty;
  @override
  Widget build(BuildContext context) {
    final length = 150;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20.0), textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(children: <Widget>[
              Text(problemId, style: TextStyle(color: Colors.grey[400], fontSize: 14.0)),
              Text(" » " + judge, style: TextStyle(color: Colors.blue[300], fontSize: 14.0)),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Text(
              (description.length > length)?description.substring(0, length) + "...": description,
      
            ),
          )
        ],
      )
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key key, this.description, this.length}) : super(key: key);
  final String description;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Text(
      (description.length > length)?description.substring(0, length): description,

    );
  }
}