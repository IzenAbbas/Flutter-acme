import 'package:flutter/material.dart';
import 'package:week1_tasks/week3/whatsapp_clone.dart';

class Week3HomePage extends StatefulWidget {
  const Week3HomePage({super.key});

  @override
  State<Week3HomePage> createState() => _Week3HomePageState();
}

class _Week3HomePageState extends State<Week3HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.cyan[300],
        title: Text(
          'Week3-Tasks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => WhatsappClone()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[50],
                  side: BorderSide(width: 2),
                ),
                child: Text('Whatsapp Clone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
