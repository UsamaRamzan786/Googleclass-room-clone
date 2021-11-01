import 'package:class_room/bottomNavigation.dart';
import 'package:class_room/drawer.dart';
import 'package:class_room/popupManu.dart';
import 'package:flutter/material.dart';

class ClassWork extends StatelessWidget {
  ClassWork({Key? key, required this.className}) : super(key: key);
  var className;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: Text(
          '$className',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.assignment_ind_outlined),
          ),
          PopUpManuButton()
        ],
      ),
    );
  }
}
