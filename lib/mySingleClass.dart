import 'dart:js';
import 'package:class_room/about.dart';
import 'package:class_room/bottomNavigation.dart';
import 'package:class_room/drawer.dart';
import 'package:class_room/shareSomeThing.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySingleClass extends StatelessWidget {
  MySingleClass(
      {required this.classname,
      required this.instructorname,
      required this.section,
      required this.col});
  String classname, instructorname, section;
  Color col;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              meet();
            },
            icon: Icon(Icons.videocam_outlined),
            tooltip: 'Join meeting',
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => About(
                          classname: this.classname,
                          instructername: this.instructorname,
                          section: this.section)));
            },
            icon: Icon(Icons.info_outline),
            tooltip: 'About',
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'edit',
                  child: Text('Refresh'),
                ),
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Send Google feedback'),
                )
              ];
            },
            onSelected: (String value) => actionPopUpItemSelected(),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Center(
            child: Container(
              height: 100,
              width: 320,
              decoration: BoxDecoration(
                  color: col, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text(
                    classname,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'A',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Center(
            child: Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(220, 90, 30, 10),

                    blurRadius: 10,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                  backgroundColor: Colors.black38,
                ),
                title: Text(
                  'Share with your class...',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      (MaterialPageRoute(
                          builder: (context) => ShareData(color: col))));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void meet() async {
    var url = 'https://meet.google.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      //showAlertDialog(context);
    }
  }

  actionPopUpItemSelected() {}
}

showAlertDialog(BuildContext context) {
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
