import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScheduleMeeting extends StatefulWidget {
  @override
  _ScheduleMeetingState createState() => _ScheduleMeetingState();
}

class _ScheduleMeetingState extends State<ScheduleMeeting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text("Schedule Meeting"),
          leading: Center(child: Text("Cancel")),
          actions: <Widget>[
            Center(child: Text("Done"))
          ],
        ),


        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8.0),
                  hintText: "Kweku Acquaye's Zoom Meeting"
                ),
              ),

              ListTile(
                leading: Text("Date"),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("date", textAlign: TextAlign.right,),
              ),

              ListTile(
                leading: Text("From"),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("time", textAlign: TextAlign.right,),
              ),

              ListTile(
                leading: Text("To"),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("time", textAlign: TextAlign.right,),
              ),

              ListTile(
                leading: Text("Time Zone"),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("time zone", textAlign: TextAlign.right,),
              ),

              ListTile(
                leading: Text("Repeat"),
                trailing: Icon(Icons.keyboard_arrow_right),
                title: Text("Never", textAlign: TextAlign.right,),
              ),

              SwitchListTile(
                value: false,
                onChanged: (value){

                },
                title: Text("Use Personal Meeting ID (PMI"),
                subtitle: Text("987987987"),
              ),

              Container(
                  color: Colors.black54,
                  child: Text("Lots of text")
              ),

              Text("PASSWORD", textAlign: TextAlign.left,),

              SwitchListTile(
                title: Text("Meeting Password"),
                value: false,
                onChanged: (value){
                },
              ),

              ListTile(
                title: Text("Password"),
                trailing: Text("654654654"),

              ),

              Text("MEETING OPTIONS",
              textAlign: TextAlign.left,),

              SwitchListTile(
                title: Text("Host Video On"),
                value: false,
                onChanged: (value){
                },
              ),

              SwitchListTile(
                title: Text("Participant Video On"),
                value: false,
                onChanged: (value){
                },
              ),

              ListTile(
                leading: Column(
                  children: <Widget>[
                    Text("Audio Option"),
                    Text("United States")
                  ],
                ),
                title: Text("Telephone and Device audio", textAlign: TextAlign.right,),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),

              Text("Advanced Options",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.blue,

              ),
              ),
              SwitchListTile(
                title: Text("Add to Calendar"),
                value: false,
                onChanged: (value){

                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
