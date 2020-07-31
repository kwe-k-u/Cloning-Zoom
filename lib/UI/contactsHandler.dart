import 'package:flutter/material.dart';

class ContactsHandler extends StatefulWidget {
  @override
  _ContactsHandler createState() => _ContactsHandler();
}

class _ContactsHandler extends State<ContactsHandler> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tab(text: "Contacts",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tab(text: "Channels",),
              ),
            ],
          ),
        ),
        body: contacts(),
      )
    );
  }

  Widget channels(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[


        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black12
            ),

            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Channels",
                prefixIcon: Icon(Icons.search),

              ),
            ),
          ),
        ),
        Spacer(),
        Center(
          child: Icon(Icons.perm_identity,
            size: MediaQuery.of(context).size.width * 0.5,
            color: Colors.grey,
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "There are no channels created yet", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0
          ),
          ),
        ),
        Spacer()



      ],
    );
  }

  Widget contacts(){
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black12
            ),

            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Contacts",
                prefixIcon: Icon(Icons.search),

              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          child: Row(
            children: <Widget> [
              Text("My Contacts",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
            ]
          ),
        ),
        Divider(thickness: 1.0,),
        ListTile(
          leading: Icon(Icons.keyboard_arrow_down),
          trailing: Text("0", style: TextStyle(
              color: Colors.grey
          ),),
          title: Text("Starred"),
        ),

        Divider(thickness: 1.0,),
        ListTile(
          leading: Icon(Icons.keyboard_arrow_down),
          trailing: Text("0", style: TextStyle(
              color: Colors.grey
          ),),
          title: Text("Starred"),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: Icon(Icons.perm_identity, color: Colors.white, size: 28.0,),
              ),
            ),
            Text("Connect Phone Contacts", style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),)
          ],
        ),

        Container(
          padding: EdgeInsets.all(12.0),
          child: Row(
              children: <Widget> [
                Text("All Contacts",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),
                ),
              ]
          ),
        ),
        Divider(thickness: 1.0,),
        ListTile(
          leading: Icon(Icons.keyboard_arrow_down),
          trailing: Text("689", style: TextStyle(
              color: Colors.grey
          ),),
          title: Text("Company Contacts"),
        ),

      ],
    );
  }
}


//DefaultTabController(
//length: 2,
//initialIndex: 0,
//child: Scaffold(
//appBar: TabBar(tabs: [
//Tab(
//text: "Contact",
//),
//Tab(
//text: "Channel",)
//]),
//body: TabController(
//
//),
//),
//)


