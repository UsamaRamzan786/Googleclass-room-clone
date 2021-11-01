import 'package:flutter/material.dart';
import 'package:class_room/drawer.dart';

class MyClassInfo extends StatelessWidget {
  const MyClassInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            DrawerCode(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline),
              tooltip: 'About',
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black87,
              ),
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
            ),
          ],
        )
      ],
    ));
  }
}
