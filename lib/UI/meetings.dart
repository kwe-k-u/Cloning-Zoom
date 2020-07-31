import 'package:flutter/material.dart';

class MeetingsPage extends StatefulWidget {
  @override
  _MeetingsPageState createState() => _MeetingsPageState();
}

class _MeetingsPageState extends State<MeetingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text("Meetings"),
          actions: <Widget>[
            Center(
                child: Text("Refresh",
              style: TextStyle(
                fontSize: 20.0
              ),)
            )
          ],
        ),

        body: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("Personal Meeting ID",)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Center(
                  child: Text("595 959 595",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      fontSize: 18.0
                    ),
                  )
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    splashColor: Colors.blueAccent,

                    borderSide: BorderSide(
                      color: Colors.blueAccent,

                    ),
                    textColor: Colors.blueAccent,
                    child: Text("Start"),
                    onPressed: (){

                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    splashColor: Colors.blueAccent,
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                    textColor: Colors.blueAccent,
                    child: Text("Send invitation"),
                    onPressed: (){

                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlineButton(
                    splashColor: Colors.blueAccent,
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),
                    textColor: Colors.blueAccent,
                    child: Text("Invite"),
                    onPressed: (){

                    },
                  ),
                )
              ],
            )

          ],

        ),
      ),
    );
  }
}
