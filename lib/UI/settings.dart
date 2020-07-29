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
        backgroundColor: Colors.white70,
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
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                              text: "BASIC"
                          )
                        ]
                    ),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.videocam),
                      Text("kwe***@ashesi.edu.gh",
                      ),
                    ],
                  ),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                color: Colors.white70,
                child: ListTile(
                  title: Text("Meeting"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                color: Colors.white70,
                child: ListTile(
                  title: Text("Chat"),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                color: Colors.white70,
                child: ListTile(
                  title: Text("About"),
                  trailing: Icon(Icons.chevron_right),
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
