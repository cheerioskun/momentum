import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:momentum_app/models/custom_card.dart';
import 'package:momentum_app/models/main_drawer.dart';
import 'package:momentum_app/services/authentication.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key key, this.userId, this.auth, this.logoutCallback})
      : super(key: key);
  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(logoutCallback: widget.logoutCallback,),
        floatingActionButton:
            RaisedButton(onPressed: widget.logoutCallback, color: Colors.blue),
        body: Container(
          child: Center(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                child: StreamBuilder<QuerySnapshot>(
                  stream: Firestore.instance
                      .collection('userData')
                      .document(widget.userId)
                      .collection('userList')
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError)
                      return new Text('Error: ${snapshot.error}');
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return new Text('Loading...');
                      default:
                        return new ListView(
                          children: snapshot.data.documents
                              .map((DocumentSnapshot document) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CustomCard(
                                title: document['title'],
                                difficulty: document['difficulty'],
                                problemId: document['problemId'],
                                judge: document['judge'],
                                description: document['description'],
                                acCallback: () => {},
                                deleteCallback: () => {},
                              ),
                            );
                          }).toList(),
                        );
                    }
                  },
                )),
          ),
        ));
  }
}
