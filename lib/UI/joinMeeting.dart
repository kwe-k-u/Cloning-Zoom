import 'package:flutter/material.dart';

class JoinMeetingPage extends StatefulWidget {
  @override
  _JoinMeetingPageState createState() => _JoinMeetingPageState();
}

class _JoinMeetingPageState extends State<JoinMeetingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Join a Meeting"),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),

        body: Column(
          children: <Widget>[

            ListTile(
              title: Center(child: Text("Meeting ID")),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),

            Container(
                child: Text("Join with a personal link name")
            ),

            FlatButton(
              color: Colors.grey,
              onPressed: (){

              },
              child: Text("Join Meeting",
                style: TextStyle(

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("If you received an invitation link, tap on the link to join the meeting"),
            ),
            //todo align text to the left
            Text("JOIN OPTIONS", textAlign: TextAlign.left,),

            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  SwitchListTile(
                    onChanged: (value){

                    },
                    title: Text("Don't connect to Audio"),
                    value: false,
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  SwitchListTile(
                    onChanged: (value){

                    },
                    title: Text("Don't connect to Audio"),
                    value: false,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
