import 'package:class_room/bottomNavigation.dart';
import 'package:class_room/calenderApp.dart';
import 'package:class_room/joinClass.dart';
import 'package:class_room/popupManu.dart';
import 'package:class_room/shareSomeThing.dart';
import 'package:class_room/todo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:class_room/classRoom.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

// void main() {
//   runApp(DrawerCode());
// }

class DrawerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'G',
              style: TextStyle(color: Colors.blue, fontSize: 20),
              /*defining default style is optional */
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
                TextSpan(
                    text: ' Classroom',
                    style: TextStyle(color: Colors.black54, fontSize: 20)),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text(
              'Classes',
              style: TextStyle(color: Colors.blue[255]),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyClassRoom()));
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text(
              'Calender',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalendarApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications_outlined),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Notification()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Enrolled'),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(Icons.fact_check_outlined),
              title: Text('To do'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TODO()));
              }),
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Text('C'),
              backgroundColor: Colors.blue.shade900,
            ),
            title: Text(
              'CS212A-Automata Thaory',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('B'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigator(
                        className: 'CS212A-Automata Thaory',
                        instructorname: 'Dr. Syed Qamar Askari Shah',
                        section: 'B',
                        color: Colors.blue.shade900)),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 18,
                child: Text('C'),
                backgroundColor: Colors.purple[255]),
            title: Text(
              'CS243A-Database Systems Lab',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('C'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigator(
                      className: 'CS244-Database Systems Lab',
                      instructorname: 'Qasim Arshad',
                      section: 'C',
                      color: Colors.purple),
                ),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Text('C'),
              backgroundColor: Colors.blue.shade900,
            ),
            title: Text(
              'CS360A-Digital Marketing',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('A'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigator(
                        className: 'CS360A-Digital Marketing',
                        instructorname: 'Maaz Zafar Cheema(Vfm)',
                        section: 'A',
                        color: Colors.blue.shade900)),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Text('M'),
              backgroundColor: Colors.blue.shade600,
            ),
            title: Text(
              'MATH104A-Liner Algebra',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('A'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigator(
                        className: 'MATH104-Liner Algebra',
                        instructorname: 'Dr. Muhammad Awais',
                        section: 'A',
                        color: Colors.blue.shade600)),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Text('C'),
              backgroundColor: Colors.black54,
            ),
            title: Text(
              'CS243A-Database Systems',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('A'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigator(
                        className: 'CS243A-Database Systems',
                        instructorname: 'Tayyba Sana',
                        section: 'A',
                        color: Colors.black54)),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 18,
              child: Text('C'),
              backgroundColor: Colors.blue.shade600,
            ),
            title: Text(
              'CS318A-Analysis of Algorith',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('A'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigator(
                      className: 'CS318A-Analysis of Algorith',
                      instructorname: 'Ch. Nauman Bin Nasir',
                      section: 'A',
                      color: Colors.blue.shade600),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.archive_outlined),
            title: Text(
              'Archived classes',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Archived()));
            },
          ),
          ListTile(
            leading: Icon(Icons.folder_open),
            title: Text(
              'Classroom folders',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () async {
              var url = 'https://drive.google.com/drive/my-drive';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                JoinClass.showAlertDialog(context);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'Help',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Support()));
            },
          ),
        ],
      ),
    );
  } //build

  void calendar() async {
    SfCalendar(
      view: await CalendarView.month,
    );
  }
} //class

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  String dropdownValue = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['All', 'Unread', 'Read']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          PopUpManuButton()
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Text('Notifications you receive will appear hear',
            style: TextStyle(
                color: Colors.black87, fontWeight: FontWeight.normal)),
      ),
    );
  }
}

class Archived extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          'Archived classes',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Expanded(child: MyClassRoom.showAlertDialog(context));
              },
              icon: Icon(Icons.account_circle),
              tooltip: 'Account'),
          PopUpManuButton()
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text('No archived class'),
        ),
      ),
    );
  }
}

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool i1 = false;
  bool i2 = true;
  bool i3 = true;
  bool i4 = false;
  bool i5 = false;
  bool i6 = true;
  bool i7 = true;
  bool i8 = true;
  bool i9 = true;
  bool i10 = true;
  bool i11 = true;
  bool i12 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [PopUpManuButton()],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            title: Text('Update photo'),
          ),
          Divider(),
          ListTile(
            title: Text('Change name'),
            subtitle: Text('To change your name, ask your admin.Learn more'),
          ),
          Divider(),
          ListTile(
            title: Text('Sync over mobile data'),
            trailing: Switch(
              value: i1,
              onChanged: (value) {
                setState(() {
                  i1 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Send email notifications'),
            trailing: Switch(
              value: i2,
              onChanged: (value) {
                setState(() {
                  i2 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          Divider(),
          ListTile(
            title: Text('Class notifications'),
            subtitle: Text(
                'Turn email and mobile notifications on or off for a class'),
          ),
          Divider(),
          ListTile(
            title: Text('Device notifications '),
            trailing: Switch(
              value: i3,
              onChanged: (value) {
                setState(() {
                  i3 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Vibration'),
            trailing: Switch(
              value: i4,
              onChanged: (value) {
                setState(() {
                  i4 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Sound'),
            trailing: Switch(
              value: i5,
              onChanged: (value) {
                setState(() {
                  i5 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text(
              'Comments',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ListTile(
            title: Text('Comments on your posts'),
            trailing: Switch(
              value: i6,
              onChanged: (value) {
                setState(() {
                  i6 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Comments that mention you'),
            trailing: Switch(
              value: i7,
              onChanged: (value) {
                setState(() {
                  i7 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Private comments on work'),
            trailing: Switch(
              value: i8,
              onChanged: (value) {
                setState(() {
                  i8 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text(
              'Class you\'re enrolled in',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ListTile(
            title: Text('Work and other posts from teacher'),
            trailing: Switch(
              value: i9,
              onChanged: (value) {
                setState(() {
                  i9 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Returned work and grades from your teacher'),
            trailing: Switch(
              value: i10,
              onChanged: (value) {
                setState(() {
                  i10 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Invitations to join classes as a student'),
            trailing: Switch(
              value: i11,
              onChanged: (value) {
                setState(() {
                  i11 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
          ListTile(
            title: Text('Due-date reminders for your work'),
            trailing: Switch(
              value: i12,
              onChanged: (value) {
                setState(() {
                  i12 = value;
                });
              },
              activeTrackColor: Colors.blue.shade900,
              activeColor: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Support',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [PopUpManuButton()],
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Center(
            child: Container(
              height: 40,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(220, 90, 30, 10),

                    blurRadius: 10,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.search),
                title: Text(
                  'Describe your issue',
                  style: TextStyle(color: Colors.black38),
                ),
                onTap: () {},
              ),
            ),
          ),

          Text(
            'Popular articles',
            style: TextStyle(color: Colors.black87),
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue.shade900),
            title: Text('Join a class as a student'),
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue.shade900),
            title: Text('Hwo do i sign in to Classroom?'),
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue.shade900),
            title: Text('Change your profile name,photo,or passward'),
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue.shade900),
            title: Text('Archive or delete a class'),
          ),
          ListTile(
            leading: Icon(Icons.article, color: Colors.blue.shade900),
            title: Text('Turn in a assignment'),
          ),
          //Padding(padding: EdgeInsets.all(30)),
          Text(
            'Browse all article',
            style: TextStyle(color: Colors.blue.shade900, fontSize: 20),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: Colors.blue.shade900,
            ),
            title: Text(
              'Send feedback',
              style: TextStyle(color: Colors.blue.shade900),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
