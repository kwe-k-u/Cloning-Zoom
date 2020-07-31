import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.black54,
          centerTitle: true,

        ),
        body: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                color: Colors.white70,
                child: ListTile(
                  title: RichText(
                    text: TextSpan(
                        text: "Kweku Acquaye",
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                fontSize: 12.0
                              ),
                              text: "  BASIC"
                          )
                        ]
                    ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(Icons.videocam,
                          color: Colors.white,
                          size: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6.0)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text("kwe***@ashesi.edu.gh",
                        ),
                      ),
                    ],
                  ),
                  leading: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Text("KA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),),
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(12.0),

                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white70,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Contacts"),
                    Icon(Icons.chevron_right, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.white70,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Meeting"),
                Icon(Icons.chevron_right, color: Colors.grey,)
              ],
            ),
          ),
        ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white70,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Chat"),
                    Icon(Icons.chevron_right, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.white70,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("About"),
                    Icon(Icons.chevron_right, color: Colors.grey,)
                  ],
                ),
              ),
            ),

            //todo include copyright symbol
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text("Copyright 2012 - 2020 Zoom Communications Inc. All rights reserved",
              textAlign: TextAlign.center,),
            )

          ],

        ),
      ),
    );
  }
}
