import 'package:flutter/material.dart';

class StartMeeting extends StatefulWidget {
  @override
  _StartMeetingState createState() => _StartMeetingState();
}

class _StartMeetingState extends State<StartMeeting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text("Start a meeting"),
        ),
        backgroundColor: Colors.white70,
        body: Column(
          children: <Widget>[

            SwitchListTile(
              title: Text("Video On"),
              value: false,
              onChanged: (value){}

            ),
            SwitchListTile(
              title: Text("Use Personal Meeting ID"),
              subtitle: Text("589 985 654"),
              value: false,
              onChanged: (value){}

            ),

            FlatButton(
              color: Colors.blue,
              child: Text("Start a meeting"),
              onPressed: (){

              },
            )
          ],
        ),
      ),
    );
  }
}
