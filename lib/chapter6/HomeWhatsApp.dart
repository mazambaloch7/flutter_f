import 'package:flutter/material.dart';

class HomeScreenWhatsApp extends StatefulWidget {

  static const String id = "/whatsapp";

   HomeScreenWhatsApp({Key? key}) : super(key: key);

  @override
  State<HomeScreenWhatsApp> createState() => _HomeScreenWhatsAppState();
}

class _HomeScreenWhatsAppState extends State<HomeScreenWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return

      DefaultTabController(
        length: 4,
        child: Scaffold(

        appBar: AppBar(
    centerTitle: false,
    title: Text("What'sApp"),
    bottom: TabBar(
      tabs: [
        Tab(child: Icon(Icons.camera_alt)),

        Tab(child: Text("Chats")),

        Tab(child: Text("Status")),

        Tab(child: Text("call")),
      ],

    ),


          actions: [


            Icon(Icons.search),



            SizedBox(
              width: 15,
            ),



            PopupMenuButton(itemBuilder: ((context) => [
              PopupMenuItem(child: Text("New Group"), value: '1',),
              PopupMenuItem(child: Text("Setting"), value: '2',),
              PopupMenuItem(child: Text("Log Out"), value: '3',),

            ])),


          ],
          
          
        ),

        body: TabBarView(
    children: [

            Center(child: Text("Camera")),

            ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
                    ),
                  ),
                  title: Text("Azam khan"),
                  subtitle:  Text("Assalam-0-Alikum"),
                  trailing:  Text("3:22pm"),
                );
                }),

            // Center(child: Text("Chat")),
            Center(child: Text("status")),
            // Center(child: Text("Calls")),
      ListView.builder(
        itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
                ),
              ),
              title: Text("Azam khan"),
              subtitle:  Text(index.isEven ? "You missed audio call " : "Video call missed"),
              trailing:  Icon(index.isEven ? Icons.call: Icons.video_call),
            );
          }),

        ],
    ),
        )
      );
  }
}
