import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.repeated,
                  colors: [Colors.pinkAccent, Colors.lightGreen])),
        ),
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.lightGreen,
                child: Text("Press"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.redAccent,
                        title: Text("Alart"),
                        content: Text("You Are Beautiful Understand!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Ok, Got It")),
                        ],
                      );
                    },
                  );
                }),
            RaisedButton(
                color: Colors.amberAccent,
                child: Text("Go"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.greenAccent,
                          title: Text(
                            "Get up Yr",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent),
                          ),
                          content: Text("Good Morning",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink)),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Ok")),
                          ],
                        );
                      });
                }),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.repeated,
                      colors: [Colors.pinkAccent, Colors.lightGreen])),
            ),
          ],
        ),
      ),
    ));
  }
}
