import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Text("Meet & Chat"),
          centerTitle: true,
          leading: Icon(Icons.star_border),
          actions: <Widget>[
            Icon(Icons.launch)
          ],
        ),
        body: Column(
          children: <Widget>[

            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),

              ),
            ),
                Divider(thickness: 1.5,),

                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        FlatButton(
                          child: Icon(Icons.videocam),
                          onPressed: (){
                          },
                          color: Colors.amberAccent,
                        ),

                        Text("New Meeting")
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        FlatButton(
                          child: Icon(Icons.add_box),
                          onPressed: (){
                          },
                          color: Colors.amberAccent,
                        ),

                        Text("Join")

                      ],
                    ),

                    Column(
                      children: <Widget>[

                        FlatButton(
                          child: Icon(Icons.calendar_today),
                          onPressed: (){
                          },
                          color: Colors.amberAccent,
                        ),
                        Text("Share Screen")

                      ],
                    ),

                    Column(
                      children: <Widget>[
                        FlatButton(
                          child: Icon(Icons.open_in_browser),
                          onPressed: (){
                          },
                          color: Colors.amberAccent,
                        ),
                        Text("Share Screen")
                      ],
                    ),

                  ],
                ),

            Divider(thickness: 8,),

            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Kweku Acquaye (you)"),
                  ),

                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Keith Asare"),
                    subtitle: Text("Incoming call"),
                    trailing: Text("Thur 28 May"),
                  ),

                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Michael Ofori"),
                    subtitle: Text("Incoming Call"),
                    trailing: Text("Thur 21 May"),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
