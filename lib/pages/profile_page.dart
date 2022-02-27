import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hackathon_app/pages/summary.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<List> _settings = [
    [
      'Notifications',
      'Turn on/off notifications',
      Icons.notifications_rounded,
      Colors.red[400]
    ],
    [
      'Terms and Conditions',
      'Terms and Conditions',
      Icons.assignment_turned_in,
      Colors.green[400]
    ],
    ['Summary', 'End of the Day', Icons.add_task_outlined, Colors.yellow[700]],
    ['Help', 'Help and feedback', Icons.help_outline, Colors.blue[400]],
    ['Logout', 'Logout', Icons.exit_to_app, Colors.black],
  ];

  int activeStatus = 0;

  showLogoutDealog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Logout'),
            content: Text('Are you sure you want to logout?'),
            actions: <Widget>[
              FlatButton(
                color: Colors.blueAccent,
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Logout'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'User Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/71.jpg'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Some Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Punggol, Singapore",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                        },
                        icon: Icon(
                          Icons.mode_edit_outline_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _settings.length,
                  itemBuilder: (context, index) {
                    return settingsOption(
                        _settings[index][0],
                        _settings[index][1],
                        _settings[index][2],
                        _settings[index][3]);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  settingsOption(String title, String subtitle, IconData icon, Color color) {
    return ListTile(
      onTap: () {
        if (title == 'Logout') {
          showLogoutDealog();
        }
        if (title == 'Summary') {
          Navigator.pushReplacement((context),
              MaterialPageRoute(builder: (context) => SummaryPage()));
        }
      },
      subtitle: Text(subtitle),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.grey.shade400,
      ),
    );
  }
}
