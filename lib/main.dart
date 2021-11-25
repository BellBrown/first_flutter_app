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
      title: 'Flutter demo',
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
     body:  Center(
       child: ListTile(leading: const CircleAvatar(radius: 30,backgroundImage:AssetImage("assets/images/profile0.jfif"),),
       title: const Text("Rexford"),
       // ignore: prefer_const_literals_to_create_immutables
       subtitle:Row(children: [const Icon(Icons.done_all),
       SizedBox(width: 10,),
       Text("Hello send me scratch card")],
       ) ,
       trailing:  Column(
         children: [Text("3:30"),Icon(Icons.notifications)],
       ) ,
         )
     ) ,
     backgroundColor: Colors.white,

    );
  }
}
