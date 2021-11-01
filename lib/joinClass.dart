//import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'Join Class',
//     home: JoinClass(),
//   ));
// }

class JoinClass extends StatelessWidget {
  // const JoinClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
            )),
        title: Text(
          'Join class',
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(5)),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Join'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white54,
                      textStyle: TextStyle(
                        fontSize: 15,
                      )),
                ),
                PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        value: 'edit',
                        child: Text('Send Google feedback'),
                      ),
                    ];
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Text('You\'re currently signed in as '),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade300,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.blue.shade900,
                ),
              ),
              title: Text('Usama Ramzan '),
              subtitle: Text('191370165@gift.edu.pk'),
            ),
            Divider(),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text('Ask your teacher for the class code, then ente it here.'),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Class Code',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              'To sing in with a class code',
              style: TextStyle(fontSize: 15),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text('. Use an  authorised account'),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
                '. Use a class code, with 6-7 letters and\nnumbers, and no spases or symbols'),
            Padding(padding: EdgeInsets.only(top: 10)),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'If ypu are having trouble joining the class, go to the\n'),
                  TextSpan(
                      text: 'Helpe Center article',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          var url =
                              'https://support.google.com/edu/classroom/?hl=en#topic=10298088';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            showAlertDialog(context);
                          }
                        }),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white70,
    );
  }

  static showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Can't Open URL"),
      content: Text("Please check your internet connection"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
