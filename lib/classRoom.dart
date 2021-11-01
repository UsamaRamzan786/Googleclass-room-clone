import 'package:class_room/todo.dart';
import 'package:class_room/bottomNavigation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:class_room/drawer.dart';
import 'package:class_room/joinClass.dart';
import 'package:class_room/main.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Classromm',
    home: MyClassRoom(),
  ));
}

class MyClassRoom extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Google Classroom',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Expanded(child: showAlertDialog(context));
                    },
                    icon: Icon(Icons.account_circle),
                    tooltip: 'Account'),
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
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(220, 90, 30, 10),

                    blurRadius: 5,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 7)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        'This week',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Padding(padding: EdgeInsets.only(left: 70)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TODO()));
                        },
                        child: Text(
                          'View to do list',
                          style: TextStyle(color: Colors.blue.shade800),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'No work coming up at present',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'CS212A-Automata Theory',
              instructorname: 'Dr. Syed Qamar Askari Shah',
              section: 'B',
              color: Colors.black45),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'CS244A-Database Systems Lab',
              instructorname: 'Qasim Arshar',
              section: 'C',
              color: Colors.black54),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'CS360A-Digitbal Marketing',
              instructorname: 'Maaz Zafar Cheema(Vfm)',
              section: 'A',
              color: Colors.blue.shade800),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'MATH104A-linear Algebra',
              instructorname: 'Dr. Muhammad Awais',
              section: 'A',
              color: Colors.blue.shade900),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'CS243A-Database Systems ',
              instructorname: 'Tayyba Sana',
              section: 'A',
              color: Colors.purple),
          Padding(padding: EdgeInsets.only(top: 5)),
          MyClass(
              className: 'CS318A-Analysis of Algorithms',
              instructorname: 'Ch. Nauman Bin Nasir',
              section: 'A',
              color: Colors.blue.shade900),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => JoinClass()));
        },
        tooltip: 'join new class',
        child: Icon(Icons.add, color: Colors.blue.shade900),
        backgroundColor: Colors.white,
      ),
    );
  }

  static showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = IconButton(
      icon: Icon(
        Icons.close,
        color: Colors.black87,
      ),
      color: Colors.black87,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Row(
        children: [
          okButton,
          Padding(padding: EdgeInsets.only(left: 45)),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'G',
              style: TextStyle(color: Colors.blue, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                    text: 'o',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                TextSpan(
                    text: 'o',
                    style: TextStyle(color: Colors.yellow, fontSize: 20)),
                TextSpan(
                    text: 'g',
                    style: TextStyle(color: Colors.blue, fontSize: 20)),
                TextSpan(
                    text: 'l',
                    style: TextStyle(color: Colors.green, fontSize: 20)),
                TextSpan(
                    text: 'e',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.red[255],
              child: Text(
                'U',
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text('Usama Ramzan'),
            subtitle: Text('191370165@gift.edu.pk'),
          ),
          Align(
            alignment: Alignment.center,
          ),
          RawMaterialButton(
            onPressed: () {},
            child: Text(
              'Google Account',
              style: TextStyle(color: Colors.black87),
            ),
            fillColor: Colors.white,
            shape: const StadiumBorder(),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.green,
              child: Text(
                'B',
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text('Basit Azaiz'),
            subtitle: Text('191370465@gift.edu.pk'),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Text(
                'A',
                style: TextStyle(color: Colors.white),
              ),
            ),
            title: Text('Ali Ahamad'),
            subtitle: Text('191370135@gift.edu.pk'),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {},
            ),
            title: Text('Add another account'),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
            ),
            title: Text('Manage account on this device'),
          ),
          Divider(),
          Text('Privacy Policy  . Terms of service'),
        ],
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void actionPopUpItemSelected() {}
}
