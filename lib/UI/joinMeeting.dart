import 'package:flutter/material.dart';

class JoinMeetingPage extends StatefulWidget {
  @override
  _JoinMeetingPageState createState() => _JoinMeetingPageState();
}

class _JoinMeetingPageState extends State<JoinMeetingPage> {

  bool audioBool = false, videoBool = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: ()=> Navigator.pop(context),
          ),
          title: Text("Join a Meeting"),
          centerTitle: true,
          backgroundColor: Colors.black54,
        ),

        body: Column(
          children: <Widget>[

            Container(
              color: Colors.white,
              child: ListTile(
                title: Text("Meeting ID",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.grey
                  ),
                ),
                trailing: Icon(Icons.keyboard_arrow_down),
              ),
            ),

            Container(
              padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Text("Join with a personal link name",
                  style: TextStyle(
                    color: Colors.blue.shade600
                  ),
                  ),
                )
            ),

            Container(
              color: Colors.white,
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Kweku Acquaye",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                )
            ),

            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Colors.grey,
                      onPressed: (){

                      },
                      child: Text("Join Meeting",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("If you received an invitation link, tap on the link to join the meeting",
              style: TextStyle(
                color: Colors.grey.shade800
              ),),
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("JOIN OPTIONS",
                    style: TextStyle(
                      color: Colors.grey.shade600
                    ),),
                ),
              ],
            ),

            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[

                  SwitchListTile(
                    onChanged: (value){
                      setState(() {
                        audioBool = value;
                      });
                    },
                    title: Text("Don't Connect To Audio"),
                    value: audioBool,
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  SwitchListTile(
                    onChanged: (value){
                      setState(() {
                        videoBool = value;
                      });
                    },
                    title: Text("Turn Off My Video"),
                    value: videoBool,
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
