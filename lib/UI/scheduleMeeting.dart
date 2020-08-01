import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScheduleMeeting extends StatefulWidget {
  @override
  _ScheduleMeetingState createState() => _ScheduleMeetingState();
}

class _ScheduleMeetingState extends State<ScheduleMeeting> {
  String fromTime = "10:00 pm", toTime = "10:30 pm", fromDate = "28-07-2020";
  bool meetingBool = false, passwordBool = false,
      hostBool = false, participantBool = false, calendarBool = false;
  pickTime(String value){

    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),

    );


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: Text("Schedule Meeting"),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
              child: Center(
                  child: Text("Cancel")
              )
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: ()=> Navigator.pop(context),
                icon: Text(""),
                label: Text("Done", style: TextStyle(
                  color: Colors.white
                ),)
            )
          ],
        ),


        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 8.0),
                      hintText: "Kweku Acquaye's Zoom Meeting"
                    ),
                  ),
                ),
              ),


              GestureDetector(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text("Date"),
                      Spacer(),
                      Text(fromDate, textAlign: TextAlign.right,),
                      Icon(Icons.keyboard_arrow_right),

                    ],
                  ),
                ),
                onTap: (){
                  showDialog(context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: CalendarDatePicker(
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000, 02, 02),
                        lastDate: DateTime(2040, 02, 02),
                        onDateChanged: (date){
                          setState(() {
                            fromDate = date.toString().split(" ").elementAt(0);
                          });
                        },
                      ),
                    );
                  }
                    );

                },
              ),

              Container(
                  color: Colors.white,
                  child: Divider( thickness: 1.0,)
              ),


              GestureDetector(
                onTap: (){
                  pickTime(fromTime);
                },
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text("From"),
                      Spacer(),
                      Text(fromTime,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                        color: Colors.grey
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_right),

                    ],
                  ),
                ),
              ),

              Container(
                  color: Colors.white,
                  child: Divider( thickness: 1.0,)
              ),


              GestureDetector(
                onTap: (){pickTime(toTime);},
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text("To"),
                      Spacer(),
                      Text(toTime,
                        textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.grey
                          ),
                      ),
                      Icon(Icons.keyboard_arrow_right),

                    ],
                  ),
                ),
              ),


              Container(
                  color: Colors.white,
                  child: Divider( thickness: 1.0,)
              ),


              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Time Zone"),
                    Spacer(),
                    Text("GMT+0:00, Greenwich Mean Time",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right,
                    color: Colors.grey,),

                  ],
                ),
              ),

              Container(
                  color: Colors.white,
                  child: Divider( thickness: 1.0,)
              ),


              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Repeat"),
                    Spacer(),
                    Text("Never", textAlign: TextAlign.right,),
                    Icon(Icons.keyboard_arrow_right),

                  ],
                ),
              ),

              Container(
                  color: Colors.white,
                  child: Divider( thickness: 1.0,)
              ),

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  value: meetingBool,
                  onChanged: (value){
                    setState(() {
                      meetingBool = value;
                    });
                  },

                  title: Text("Use Personal Meeting ID (PMI"),
                  subtitle: Text("987987987"),
                ),
              ),

              Container(
                padding: EdgeInsets.all(12.0),
                  child: Text(text)
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text("PASSWORD", textAlign: TextAlign.left,),
                  ),
                ],
              ),

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text("Meeting Password"),
                  value: passwordBool,
                  onChanged: (value){
                    setState(() {
                      passwordBool = value;
                    });
                  },
                ),
              ),

              Container(
                child: Divider(thickness: 1.0,),
                color: Colors.white,
              ),


              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text("Password"),
                      Spacer(),
                      Text("654654654"),
                    ],
                  ),
                )
              ),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Text("MEETING OPTIONS",
                textAlign: TextAlign.left,),
              ),

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text("Host Video On"),
                  value: hostBool,
                  onChanged: (value){
                    setState(() {
                      hostBool = value;
                    });
                  },
                ),
              ),

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text("Participant Video On"),
                  value: participantBool,
                  onChanged: (value){
                    setState(() {
                      participantBool = value;
                    });
                  },
                ),
              ),

              Container(
                child: Divider(thickness: 1.0,),
                color: Colors.white,
              ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("Audio Option"),
                        Text("United States")
                      ],
                    ),

                    Spacer(),
                    Text("Telephone and Device audio", textAlign: TextAlign.right,),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(12.0),
                child: Text("Advanced Options",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue,

                ),
                ),
              ),

              Container(
                color: Colors.white,
                child: SwitchListTile(
                  title: Text("Add to Calendar"),
                  value: calendarBool,
                  onChanged: (value){
                    setState(() {
                      calendarBool = value;
                    });

                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
  String text = "If this option is enabled, any meeting options that you change here will be"
      " applied to all meetings that use your personal meeting ID";
}
