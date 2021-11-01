import 'dart:html';

import 'package:class_room/popupManu.dart';
import 'package:flutter/material.dart';

class ShareData extends StatefulWidget {
  Color color;
  ShareData({required this.color});

  @override
  _ShareDataState createState() => _ShareDataState();
}

class _ShareDataState extends State<ShareData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        leading: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [
          IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
          IconButton(icon: Icon(Icons.send_outlined), onPressed: () {}),
          PopUpManuButton(),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Share with your class '),
        ),
      ),
    );
  }
}
