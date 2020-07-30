import 'package:flutter/material.dart';
import 'package:zoom_0720/UI/contactsHandler.dart';
import 'package:zoom_0720/UI/homepage.dart';
import 'package:zoom_0720/UI/joinMeeting.dart';
import 'package:zoom_0720/UI/meetings.dart';
import 'package:zoom_0720/UI/scheduleMeeting.dart';
import 'package:zoom_0720/UI/settings.dart';
import 'package:zoom_0720/UI/startMeeting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  int __currentIndex = 0;
  List<Widget> pages = [

  ];
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int __currentIndex = 0;
  List<Widget> pages = [
    Homepage(),
    MeetingsPage(),
    ContactsHandler(),
    SettingsPage()
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[__currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: __currentIndex,
            onTap: _displayPage,
            selectedItemColor: Theme.of(context).accentColor,
            unselectedItemColor: Colors.grey,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outline),
                  title: Text('Meet & Chat')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_time),
                  title: Text('Meetings')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text('Contacts')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('Settings')
              ),
            ]),
      ),
    );
  }

  _displayPage(index){
    setState(() {
      __currentIndex = index;
    });
  }
}

