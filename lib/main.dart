import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const BellHomePage(),
    );
  }
}
class BellHomePage extends StatelessWidget {
  const BellHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title:Text("Bell's Application"),
     actions:const[
       Icon(Icons.search_off_outlined),
       Icon(Icons.more_vert)     ]
     ),
     body:  Column(
       children:[ ListTile(leading: const CircleAvatar(radius: 30,backgroundImage:AssetImage("assets/images/profile0.jfif"),),
       title: const Text("Rexford"),
       // ignore: prefer_const_literals_to_create_immutables
       subtitle:Row(children: [const Icon(Icons.done_all),
       SizedBox(width: 10,),
       Text("Hello send me scratch card")],
       ) ,
       trailing:  Column(
         children: [Text("3:30"),Icon(Icons.notifications)],
       ) ,
         ),
         //this is my listTile
         Card(color: Colors.pink,
            child: ListTile(
              leading: CircleAvatar(radius: 35,backgroundImage: AssetImage("assets/images/profile1.jfif"),
                   ),
                   title: Text("Christabel "),
                   subtitle: Text("Brown am done"),
          
                   trailing: Column(children: const [Text("5:20"),SizedBox(height: 6),CircleAvatar(child: Text("4"),backgroundColor: Colors.pink,radius: 10,)],),
                   ),
          ),
        
        
       ]
        
     ) ,
    

    );
  }
}
