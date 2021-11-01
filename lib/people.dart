import 'package:class_room/bottomNavigation.dart';
import 'package:class_room/drawer.dart';

import 'package:flutter/material.dart';

class People extends StatelessWidget {
  People({Key? key, required this.classname}) : super(key: key);
  String classname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text(
          classname,
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        actions: [
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
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            'Teachers',
            style: TextStyle(color: Colors.blue.shade900, fontSize: 30),
          ),
          Divider(
            color: Colors.blue.shade900,
          ),
          person('Dr:Muhammad Awais'),
          person('GIFTX Admin'),
          Text(
            'ClassMattes',
            style: TextStyle(color: Colors.blue.shade900, fontSize: 30),
          ),
          Divider(
            color: Colors.blue.shade900,
          ),
          person('Arslan Awais'),
          person('ALi Salman'),
          person('Hameez Ahamd'),
          person('Basit Azaiz'),
          person('Noman Whadi'),
          person('Usmama Ramzan'),
          person('Sufe meo'),
          person('Noman Ali'),
          person('Ali Whadi'),
          person('Adil '),
          person('Wadjid Ali'),
          person('Zeeshan Ali'),
        ],
      ),
    );
  }

  Widget person(name) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.black38,
        radius: 18,
        child: Icon(
          Icons.person_outline,
          color: Colors.black54,
        ),
      ),
      title: Text(
        '$name',
        style: TextStyle(color: Colors.black),
      ),
      onTap: () {},
    );
  }

  actionPopUpItemSelected() {}
}
