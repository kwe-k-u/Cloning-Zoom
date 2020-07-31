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
          backgroundColor: Colors.black54,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
                Navigator.pop(context);
                },
          ),
          centerTitle: true,
          title: Text("Start a meeting"),
        ),

        backgroundColor: Colors.white70,

        body: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: <Widget>[

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text("Video On"),
                  value: false,
                  onChanged: (value){}

                ),
              ),
              Container(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text("Use Personal Meeting ID"),
                  subtitle: Text("589 985 654"),
                  value: false,
                  onChanged: (value){}

                ),
              ),

              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FlatButton(
                          color: Colors.blue,
                          child: Text("Start a meeting",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0

                          ),),
                          onPressed: (){

                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
