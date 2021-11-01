import 'package:flutter/material.dart';
import 'package:class_room/joinClass.dart';

void main() {
  runApp(MaterialApp(
    home: TODO(),
  ));
}

class TODO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          title: Text(
            'To do',
            style: TextStyle(color: Colors.black87),
          ),
          //automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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

          bottom: TabBar(
            indicatorColor: Colors.blue.shade900,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(color: Colors.blue.shade900),
            labelColor: Colors.blue.shade900,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text(
                  'Assigned',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Missing',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [Assigned(), Missing(), Done()],
        ),
      ),
    );
  }

  actionPopUpItemSelected() {}
}

class Assigned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('You have no assigned work right now'),
      ),
    );
  }
}

class Missing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('You have no missing work right now'),
      ),
    );
  }
}

class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('You have no Done work right now'),
      ),
    );
  }
}
