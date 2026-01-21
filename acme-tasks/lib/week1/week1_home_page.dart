import 'package:flutter/material.dart';
import 'package:week1_tasks/week1/task1.dart';
import 'package:week1_tasks/week1/task2.dart';
import 'package:week1_tasks/week1/task3.dart';
import 'package:week1_tasks/week1/task4.dart';

class Week1HomePage extends StatefulWidget {
  const Week1HomePage({super.key});

  @override
  State<Week1HomePage> createState() => _Week1HomePageState();
}

class _Week1HomePageState extends State<Week1HomePage> {
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
          'Week1-Tasks',
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
                    MaterialPageRoute(builder: (builder) => Task1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[50],
                  side: BorderSide(width: 2),
                ),
                child: Text('Task1'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Task2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[50],
                  side: BorderSide(width: 2),
                ),
                child: Text('Task2'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Task3()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[50],
                  side: BorderSide(width: 2),
                ),
                child: Text('Task3'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Task4()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[50],
                  side: BorderSide(width: 2),
                ),
                child: Text('Task4'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
