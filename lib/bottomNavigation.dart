import 'package:class_room/checkClass.dart';
import 'package:class_room/classWork.dart';
//import 'dart:js';
import 'package:class_room/main.dart';
import 'package:class_room/mySingleClass.dart';
import 'package:class_room/people.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  BottomNavigator(
      {Key? key,
      required this.className,
      required this.instructorname,
      required this.section,
      required this.color})
      : super(key: key);
  String className, instructorname, section;
  Color color;
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
  //className: className, color: color
}

class _BottomNavigatorState extends State<BottomNavigator> {
  // _BottomNavigatorState({required this.className, required this.color});

  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      MySingleClass(
          classname: widget.className,
          instructorname: widget.instructorname,
          section: widget.section,
          col: widget.color),
      ClassWork(
        className: widget.className,
      ),
      People(classname: widget.className)
    ];

    return Scaffold(
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.black87,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (int value) {
          setState(() {
            current_index = value;
          });
        },
        currentIndex: current_index,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Stream',
            icon: Icon(Icons.forum),
          ),
          BottomNavigationBarItem(
            label: 'Classwork',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: 'People',
            icon: Icon(Icons.people_alt_outlined),
          ),
        ],
      ),
    );
  }
}
