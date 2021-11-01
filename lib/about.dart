import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About(
      {Key? key,
      required this.classname,
      required this.instructername,
      required this.section})
      : super(key: key);
  String classname, instructername, section;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        title: Text('About'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            '$classname',
            style: TextStyle(color: Colors.black87, fontSize: 25),
          ),
          Text(
            'Instructer:  $instructername',
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
          Text(
            'Section:  $section',
            style: TextStyle(color: Colors.black87, fontSize: 15),
          )
        ],
      ),
    );
  }

  actionPopUpItemSelected() {}
}
