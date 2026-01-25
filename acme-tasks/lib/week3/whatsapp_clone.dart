import 'package:flutter/material.dart';

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({super.key});

  @override
  State<WhatsappClone> createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Text('Whatsapp', style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 174, 89)),
    ),
    actions: [Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Icon(Icons.camera_alt_outlined),
    ), Icon(Icons.more_vert)])
    
    ,body: Padding(
      padding: const EdgeInsets.all(15.0),

      child: Column(children: [TextField(decoration: InputDecoration(prefixIcon: Icon(Icons.search),border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Color.fromARGB(255, 89, 98, 105))) ,hintText: 'Ask Meta AI or Search'),),
      Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(width: 1, color: Color.fromARGB(255, 8, 98, 105)))), child: Text('All'),),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: BorderSide(width: 1, color: Color.fromARGB(255, 8, 98, 105)))), child: Text('Unread'),),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(width: 1, color: Color.fromARGB(255, 8, 98, 105)))), child: Text('Favourites'),),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(width: 1, color: Color.fromARGB(255, 8, 98, 105)))), child: Text('Groups'),),
        ),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: TextButton(onPressed: (){},style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),side: BorderSide(width: 1, color: Color.fromARGB(255, 8, 98, 105)))), child: Icon(Icons.add),),
        ),
        ],),
      )
      
      ],),
    ));

  }
}