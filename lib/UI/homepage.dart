import 'package:flutter/material.dart';
import 'package:zoom_0720/UI/joinMeeting.dart';
import 'package:zoom_0720/UI/scheduleMeeting.dart';
import 'package:zoom_0720/UI/startMeeting.dart';

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

          title: Text("Meet & Chat",
            style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),

          centerTitle: true,
          leading: Icon(Icons.star_border),
          actions: <Widget>[
            Icon(Icons.launch)
          ],
        ),
        body: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.black12
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),

                  ),
                ),
              ),
            ),
                Divider(thickness: 1.5),

                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Container(
                          child: IconButton(
                              icon: Icon(Icons.videocam,size: 30.0,color: Colors.white),
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => StartMeeting()
                                )
                                );
                          },
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(12.0),

                          ),
                        ),

                        Text("New Meeting")
                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.add_box,
                              size: 28.0,
                              color: Colors.white,),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => JoinMeetingPage()
                              )
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0),

                          ),
                        ),

                        Text("Join")

                      ],
                    ),

                    Column(
                      children: <Widget>[

                        Container(
                          child: IconButton(
                            icon: Icon(Icons.calendar_today,
                              size: 20.0,
                              color: Colors.white,),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ScheduleMeeting()
                              ));
                              },
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0),

                          ),
                        ),
                        Text("Schedule Meeting")

                      ],
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.open_in_browser,
                              size: 20.0,
                              color: Colors.white,),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => null
                              ));
                            },
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0),

                          ),
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
                    leading:
                    Container(
                      padding: EdgeInsets.all(12.0),
                      child: Text("KA",style: TextStyle(
                        color: Colors.white
                      ),),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(12.0),

                      ),
                    ),
                    title: Text("Kweku Acquaye (you)"),
                  ),

                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(12.0),
                      child: Text("KA",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12.0),

                      ),
                    ),
                    title: Text("Keith Asare"),
                    subtitle: Text("[Incoming call]"),
                    trailing: Text("Thur 28 May"),
                  ),

                  ListTile(
                    leading:
                    Container(
                      padding: EdgeInsets.all(12.0),
                      child: Text("MO", //todo replace with image
                        style: TextStyle(
                          color: Colors.white
                      ),),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12.0),

                      ),
                    ),
                    title: Text("Michael Ofori"),
                    subtitle: Text("[Incoming Call]"),
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
