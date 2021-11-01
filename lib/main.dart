import 'package:class_room/mySingleClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/services.dart';

import 'bottomNavigation.dart';

class MyClass extends StatelessWidget {
  MyClass(
      {Key? key,
      required this.className,
      required this.instructorname,
      required this.section,
      required this.color})
      : super(key: key);
  String className, instructorname, section;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomNavigator(
                      className: this.className,
                      instructorname: this.instructorname,
                      section: this.section,
                      color: this.color)));
        },
        child: Container(
          height: 100,
          width: 320,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '$className',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 22),
                  ),
                  PopupMenuButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          value: 'edit',
                          child: Text('Unenrol'),
                        ),
                      ];
                    },
                    onSelected: (String value) => actionPopUpItemSelected(),
                  ),
                ],
              ),
              Text(
                'A',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
              Text(
                'GIFTX Admins21',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void actionPopUpItemSelected() {}
}
