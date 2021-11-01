import 'package:flutter/material.dart';

class PopUpManuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
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
    );
  }

  void actionPopUpItemSelected() {}
}
