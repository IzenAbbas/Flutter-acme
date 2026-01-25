import 'package:flutter/material.dart';

List<String> contacts = List.filled(50, 'test');
List<String> l1 = ['All', 'Unread', 'Favourites', 'Groups', ''];

class WhatsappClone extends StatefulWidget {
  const WhatsappClone({super.key});

  @override
  State<WhatsappClone> createState() => _WhatsappCloneState();
}

class _WhatsappCloneState extends State<WhatsappClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Whatsapp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 174, 89),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 89, 98, 105),
                  ),
                ),
                hintText: 'Ask Meta AI or Search',
              ),
            ),
          ),
      
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 8)
            ),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: l1.length,
              itemBuilder: (context, index) {
                if (l1[index] != '') {
                  return Padding(
                    padding: const EdgeInsets.only(right: 9.5),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        side: BorderSide(width: 1),
                      ),
                      child: Text(
                        l1[index],
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(right: 9.5),
                  child: IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(side: BorderSide(width: 1)),
                    icon: Icon(Icons.add, color: Colors.black),
                  ),
                );
              },
            ),
          ),
      
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text('Contact ' + (index + 1).toString()),
                      tileColor: Colors.blue,
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text('Contact ' + (index + 1).toString()),
                      tileColor: Colors.green,
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
