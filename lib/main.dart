import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.teal.shade800,
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child:Icon(Icons.groups),
                ),
                Tab(
                  child:Text('Chats'),
                ),
                Tab(
                  child:Text('Status'),
                ),
                Tab(
                  child:Text('Calls'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 30,),
              Icon(Icons.search_sharp),
              SizedBox(width: 10,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => [
                    PopupMenuItem(
                      value: '1',
                        child: Text('New group'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('New broadcast'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('PAyments'),
                    ),
                    PopupMenuItem(
                      value: '4',
                      child: Text('Linked devices'),
                    ),
                    PopupMenuItem(
                      value: '5',
                      child: Text('Starred Messages'),
                    ),
                    PopupMenuItem(
                      value: '6',
                      child: Text('Settings'),
                    )


                  ]
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('Create Group', style: TextStyle(fontSize: 30),),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context, index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5Vw7-yY-lvbI4sIiA9FcnPUlJX4wqL4betbAh0LV0g&usqp=CAU&ec=48600113'),
                  ),
                  trailing: Text('9:00',style: TextStyle(color: Colors.white70),),
                  title: Text('Ananya',style: TextStyle(color: Colors.white),),
                  subtitle: Text('love you',style: TextStyle(color: Colors.white60),),
                );
              }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:  Border.all(color: Colors.green, width: 2)
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5Vw7-yY-lvbI4sIiA9FcnPUlJX4wqL4betbAh0LV0g&usqp=CAU&ec=48600113'),
                        ),
                      ),
                      trailing: Text('9:00',style: TextStyle(color: Colors.white70),),
                      title: Text('Ananya',style: TextStyle(color: Colors.white),),
                      subtitle: Text('today',style: TextStyle(color: Colors.white60),),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5Vw7-yY-lvbI4sIiA9FcnPUlJX4wqL4betbAh0LV0g&usqp=CAU&ec=48600113'),
                      ),
                      trailing:index%2 == 1 ? Icon(Icons.video_camera_front_outlined) : Icon(Icons.call),
                      title: Text('Ananya',style: TextStyle(color: Colors.white),),
                      subtitle: index%2 == 1 ?Text('Video call',style: TextStyle(color: Colors.white60),):Text('Audio call',style: TextStyle(color: Colors.white60),),
                    );
                  }
              )

            ],
          ),

        ),
      ),
    );
  }
}
